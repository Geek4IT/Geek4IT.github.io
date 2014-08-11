var items, sampleItems, todoList, filters;

// our model is a normal array - Ractive will intercept calls to mutator methods
// like push and splice, so we don't need to inherit from a custom class or anything
sampleItems = [
  { description: 'Add a todo' },
  { description: 'Add some more todos' },
  { description: 'Build something with Ractive.js' }
];

// Load data from localStorage. FF will throw a SecurityError if you try
// to access localStorage with cookies disabled, so we try-catch
try {
  if ( window.localStorage ) {
    items = JSON.parse( window.localStorage.getItem( 'ractive-todos' ) );
  }

  if ( !items || !items.length ) {
    items = sampleItems;
  }
} catch ( err ) {
  // overwrite localStorage so we don't need to try-catch later
  window.localStorage = {
    setItem: function () {} // noop
  };

  items = sampleItems;
}

// set up some filters
filters = {
  completed: function ( item ) { return item.completed; },
  active: function ( item ) { return !item.completed; },
  all: function () { return true; }
};

// create our app view
todoList = new Ractive({
  el: example,
  template: template,
  noIntro: true, // disable transitions during initial render

  data: {
    items: items,
    filter: function ( item ) {
      var filter = filters[ this.get( 'currentFilter' ) ];
      return filter( item );
    },
    currentFilter: 'all',

    // These computed values are aware of their dependency on
    // `items` because of `this.get( 'items' )` - and will
    // automatically recompute and update the view when
    // `items` changes.
    completedTodos: function () {
      return this.get( 'items' ).filter( filters.completed ).length;
    },

    activeTodos: function () {
      return this.get( 'items' ).filter( filters.active ).length;
    }
  },

  // We can define 'transitions', which are applied to elements on intro
  // or outro. This is normally used for animation, but we can use it for
  // other purposes, such as autoselecting an input's contents
  transitions: {
    select: function ( t ) {
      setTimeout( function () {
        t.node.select();
        t.complete();
      }, 0 );
    }
  }
});

// Various user mouse and keyboard actions, defined in the template, will
// fire 'proxy events' that trigger behaviours and state changes
todoList.on({
  remove: function ( event, index ) {
    items.splice( index, 1 );
  },
  new_todo: function ( event ) {
    items.push({
      description: event.node.value,
      completed: false
    });

    event.node.value = '';
  },
  edit: function ( event ) {
    this.set( event.keypath + '.editing', true );
  },
  submit: function ( event ) {
    this.set( event.keypath + '.editing', false );
  },
  clear_completed: function () {
    var i = items.length;

    while ( i-- ) {
      if ( items[i].completed ) {
        items.splice( i, 1 );
      }
    }
  },
  toggle_all: function ( event ) {
    var i = items.length, completed = event.node.checked;

    while ( i-- ) {
      this.set( 'items[' + i + '].completed', completed );
    }
  },
  set_filter: function ( event, filter ) {
    this.set( 'currentFilter', filter );
  }
});

// When the model changes, persist to localStorage if possible
todoList.observe( 'items', function ( items ) {
  // persist to localStorage
  if ( window.localStorage ) {
    localStorage.setItem( 'ractive-todos', JSON.stringify( items ) );
  }
});

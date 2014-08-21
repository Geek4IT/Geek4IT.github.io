---
layout: post
title: Summary:Programming Collective Intelligence
---

{{ page.title }}
================

<p class="meta">24 Aug 2014 - Beijing</p>



<img src="http://media-cache-ec0.pinimg.com/736x/a0/04/d2/a004d2aa900ac248f670d403e2487ea5.jpg" width="200" />


#[Programming Collective Intelligence: Building Smart Web 2.0 Applications](http://amzn.com/0596529325)


ISBN: 0596529325 READ: 2014-08-24 RATING: */10



[Item-Based Collaborative Filtering Recommendation Algorithms](http://files.grouplens.org/papers/www10_sarwar.pdf)



##Euclidean Distance
[Euclidean Distance](http://en.wikipedia.org/wiki/Euclidean_distance) finds the distance between two points in multidimensional space, which is the kind of distance you measure with a ruler. If the points are written as (p1, p2, p3, p4, ...) and (q1, q2, q3, q4, ...), then the formula for Euclidean distance can be expressed as shown：

![Alt text](/images/recommander/diagram_euclidean_distance_metric.png)

```
	def euclidean(p,q): 	 	 	       sumSq=0.0          # add up the squared differences       for i in range(len(p)):         sumSq+=(p[i]-q[i])**2       # take the square root     return (sumSq**0.5)
```

Example Nova Launcher Theme
===========================

Nova Launcher is the highly customizable launcher for Android. Part of this customization comes from developers such as yourself.

This document covers the theme format for Nova Launcher.

Most launchers, including Nova Launcher, support a superset of the theme format from Go Launcher.

However this document and project is specific to Nova Launcher. This document will try to note things which are not supported by other launchers.

This project is a sample theme for Nova Launcher that can covers:

* AndroidManifest
* Automatic App Icon Theming
* Manual App Icon Theming
* Dock Background Theming
* Wallpapers


AndroidManifest
---------------

Nova Launcher identifies themes by searching for activities that can respond to the `com.novalauncher.THEME` intent.

This is done by adding the following below an <activity> tag in your `AndroidManifest.xml`

    <intent-filter>
        <action android:name="com.novalauncher.THEME" />
    </intent-filter>
    def euclidean(p,q): 	 	 	       sumSq=0.0          # add up the squared differences       for i in range(len(p)):         sumSq+=(p[i]-q[i])**2       # take the square root	return (sumSq**0.5)

Automatic App Icon Theming
--------------------------

Applying an icon theme (Nova Settings > Look and Feel > Icon Theme) will replace app icons with the icons specified in the theme.
Optionally, new app icons can be automatically generated using a background, foreground, scale and mask.

Configuration for this is done in the theme's `res/xml/appfilter.xml` .

### Replacement Icons as drawables
Replacing a specific app icon with a custom drawable included in your theme is done via:

    <item component="ComponentInfo{com.android.chrome/com.google.android.apps.chrome.Main}" drawable="ic_browser_green" />

With system apps, different devices or roms may use different component names for various components. For example The dialer app on Nexus devices is `com.android.contacts/.activities.DialtactsActivity` but on HTC devices it is `com.android.htccontacts/.DialerTabActivity`. Nova includes an internal databases of these for most devices, allowing the theme to apply an icon to the system's phone app by specifying a single keyword rather than each individual activity for every device.

**Note** Only non-Play Store system apps are included in this, third-party apps,
or Play Store apps such as Chrome, will not be included and must be themed manually.

The keywords supported are:

* `:BROWSER`
* `:CALCULATOR`
* `:CALENDAR`
* `:CAMERA`
* `:CLOCK`
* `:CONTACTS`
* `:EMAIL`
* `:GALLERY`
* `:PHONE`
* `:SMS`

Additionally Nova's app drawer icon can be themed with `:LAUNCHER_ACTION_APP_DRAWER`

A full example is:

    <item component=":SMS" drawable="ic_sms_green" />

**Note** Other launchers do not support these system app keywords and will ignore them.

### Identifying activity ComponentNames

Nova Launcher includes an option to export a full set of activity names and their original icons. This can serve as a starting point for your theme. You can find this at `Nova Settings > Long-press Volume down for Labs > Debug > Export Icons`

A zip will be created at `/sdcard/novaIconExport.zip` which contains a complete `res/xml/appfilter.xml` file as well as the original icons at the highest density they are available (in the appropriate drawable directory).

Nova also has an option to help find individual component names. Enable Nova Settings > Long-press volume down for Labs > Debug > Show Component in Edit dialog. Then either drag an app from the drawer to the Edit option, or long-press on a desktop icon and select Edit. The component name will be listed at the bottom of the dialog.

### Generating Replacement Icons

For apps that do not have a drawable replacement one can be generated by specifying parameters in the `appfilter.xml`

The four parameters are:

#### iconback

 <iconback img1="ic_back1" img2="ic_back2" img3="ic_back3" />

The background to be drawn behind the original icon. If multiple images are specified (as above `img1`, `img2` and `img3`) then one will be chosen randomly.

#### iconupon

 <iconupon img1="ic_foreground1" img2="ic_foreground2" />

The foreground to be drawn on top of the original icon. If multiple images are specified then one will be chosen randomly.

#### iconmask

 <iconmask img1="ic_mask1" />

A mask to apply to the original icon, allowing reshaping it. Black opaque pixels in the mask will be erased while transparent pixels be unchanged.
If multiple images are specified then one will be chosen randomly.

#### scale

 <scale factor=".75" />

The scale the original icon should be drawn at.



Manual Icon Theming
-------------------

Nova Launcher allows users to manually select a replacement icon, for an app, shortcut, or folder. To allow users to select one of your icons for this specify them in the `res/xml/drawable.xml`. Each icon is as follows

    <item drawable="ic_jellybean" />

The order you list the icons in will be the order that they appear in the icon picker.

You may optionally break the icons into categories by adding dividers:

    <category title="Games" />

Nova Launcher supports resource identifiers, for example for localization or compile-time error checking:

    <item drawable="@drawable/ic_jellybean" />
    <category title="@string/games" />

Other launchers do not support category dividers or resource identifiers


Dock Backgrounds
----------------

Nova Launcher allows the user to build a custom dock background based on an image picked from a theme.
There is no fixed size for a dock background as Nova Launcher supports devices of many different screen sizes and aspect ratios. Additionally, there are different orientations on the same device. Instead of trying to stretched an image to fit patterns are used to fill the appropriate amount of space on any configuration.

Patterns are specified in `res/xml/theme_patterns.xml` and point to a drawable that is designed to be repeated.
These patterns can either be full color, or grayscale and allow the user to specify a color by setting `canColor="true"`.
Otherwise the format is identical to `res/xml/drawables.xml`

    <item drawable="@drawable/pattern_checkerboard" canColor="true" />
    <item drawable="@drawable/pattern_colors" canColor="false" />

**Note** Other launchers do not support patterns for dock backgrounds and instead stretch and distort images for the dock background. It is a poor user experience, especially on tablets, but Nova Launcher is backwards compatible with this backwards approach. Legacy dock backgrounds can be specified in an `string-array` named `dock_backgroundlist` , which is also used by other launchers.

Wallpapers
----------

To add your wallpapers to Nova Launcher's wallpaper picker specify them in `res/xml/theme_wallpapers.xml` . The format is identical to `res/xml/drawables.xml` .

    <item drawable="@drawable/wallpaper_red" />

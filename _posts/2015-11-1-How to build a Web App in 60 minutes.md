---
date: 2015-11-1 23:00:00+00:00
layout: post
title: How to build a Web App in 60 minutes
thread: 61
categories: CS, Programming
tags:  Programming
---

## From 0 to 1: How to build an Web App in 60 minutes.

* Cloud Hosting: [Linode](https://www.linode.com/) - High performance SSD Linux servers.
* Web Server: [nginx](http://nginx.org/) - HTTP and reverse proxy server.
* Web Framework: [Tornado](http://www.tornadoweb.org/) - Python web framework and asynchronous networking library.
* [Supervisor](http://supervisord.org/) - A Process Control System.

## 1. Write a Web app with Tornaodo
[Tornado](http://www.tornadoweb.org/) is a Python web framework. You can 
easily write a web app with a few lines of code.

[The one](https://github.com/Geek4IT/TheOne) is a demo that shows how to crawl the feed of [Hacker News](https://news.ycombinator.com/)、[Medium](https://medium.com/)、[Product Hunt](http://www.producthunt.com/) and serve as an API. You can check this project in detail [here](http://geek4it.com/TheOne/).

### Structure

    the_one/
        handlers/
            feed.py
        lib/
        logconfig/
        media/
            css/
                vendor/
            js/
                vendor/
            images/
        templates/
        vendor/
        environment.py
        fabfile.py
        app.py
        settings.py


## 2. Getting Started with Linode

Congratulations on selecting Linode as your cloud hosting provider, follow this [guide](https://www.linode.com/docs/getting-started) will help you sign up for an account, deploy a Linux distribution, boot your Linode, and perform some basic system administration tasks. I use this Linux distribution: CentOS 7.0.

![Linode](https://s-media-cache-ak0.pinimg.com/originals/ff/9e/38/ff9e38d387ea302ba485f024da3cfd7c.png)

## 3. nginx

### Install

	1. Add Nginx Repository: sudo yum install epel-release
	
	2. Install Nginx: sudo yum install nginx
	
	3. Start Nginx: sudo systemctl start nginx
	
	4. Enable Nginx to start when your system boots: sudo systemctl enable nginx

 
 You can do a spot check right away to verify everything works well by visiting your server's public IP address in your browser.
 
    http://server_domain_name_or_IP/
 
 You will see the default CentOS 7.0 nginx web page, it should look like this:
 
 ![nginx](https://s-media-cache-ak0.pinimg.com/originals/56/3b/34/563b34305bb88d8ff67274c2751f26ba.png)

Congratulations! nginx is now installed and running!

### Configuration

The main Nginx configuration file is located at `/etc/nginx/nginx.conf`. This is where you can change settings like the user that runs the Nginx daemon processes, and the number of worker processes that get spawned when Nginx is running, among other things.


## 4. Configurate with Supervisor

	1. Install: sudo pip install supervisor
	2. Setup: echo_supervisord_conf > supervisord.conf
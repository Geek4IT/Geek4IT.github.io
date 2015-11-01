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

[The one](https://github.com/Geek4IT/TheOne)

### Directory Structure

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

## 4. Configurate with Supervisor
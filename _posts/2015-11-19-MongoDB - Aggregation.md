---
date: 2015-11-29 23:00:00+00:00
layout: post
title: MongoDB - Aggregation
thread: 63
categories: CS, Programming
tags:  Programming
---

Aggregations operations process data records and return computed results. Aggregation operations group values from multiple documents together, and can perform a variety of operations on the grouped data to return a single result. In sql count(*) and with group by is an equivalent of [MongoDB](https://www.mongodb.org/) aggregation.

###Example:

In the app collection, you will have the raw data like this:

db.app.findOne()

	{
			"_id" : ObjectId("5652403d302a7e38b1f11047"),
			"app_id" : "com.theme.love",
			"app_name" : "Love Theme",
			"gps_adid" : "023bbcf1-66a3-4d8e-a673-6fb8703a8607",
			"datetime" : "2015-11-22",
			"is_organic" : 1,
			"tracker_name" : "Facebook",
			"ip_address" : "190.242.80.166",
			"click_time" : 1448230972,
			"country" : "us",
			"installed_at" : 1448231293,
			"device_name" : "XT1032",
			"os_version" : "5.1"
	}


| Expression  | Description  | Example |
|:------------- |:---------------:| -------------:|
| $sum      | Sums up the defined value from all documents in the collection. |         db.app.aggregate([{$group : {_id : "$app_id", num_tutorial : {$sum : "$is_organic"}}}]) |
| $avg      | centered        |           $12 |
| $min | are neat        |            $1 |


Find

	db.app.aggregate([
	{'$match': {'datetime': '2015-11-23'}}, 
	{'$project':	{'app_id': 1, 'click':{'$cmp':['$click_time',  0]}, 
	'install':{'$cmp':	['$installed_at',  0]},'is_organic': 1}},
	{'$group': {'_id': "$app_id", 	'clicks':{'$sum': '$click'}, 
	'installs':{'$sum': '$install'}, 'organic':{'$sum': '$is_organic'}}}, 
	{'$sort': {'clicks': -1, 'installs': -1, 	'organics': -1}}])
	
Result

	{ "_id" : "com.theme.lock", "clicks" : 105384, "installs" : 8149, "organic" : 1824 }
	{ "_id" : "com.theme.love", "clicks" : 83628, "installs" : 8707, "organic" : 1125 }
	{ "_id" : "com.theme.garfield", "clicks" : 77436, "installs" : 7059, "organic" : 1076 }
	{ "_id" : "com.theme.galaxy", "clicks" : 73052, "installs" : 7614, "organic" : 1182 }
	{ "_id" : "com.theme.fresh", "clicks" : 18038, "installs" : 76, "organic" : 72 }
	{ "_id" : "com.theme.polarlights", "clicks" : 10265, "installs" : 3366, "organic" : 764 }
	{ "_id" : "com.theme.brutalspeed", "clicks" : 5566, "installs" : 767, "organic" : 48 }
	{ "_id" : "com.theme.aroma", "clicks" : 2822, "installs" : 906, "organic" : 130 }
	{ "_id" : "com.theme.smallyellow", "clicks" : 2794, "installs" : 813, "organic" : 56 }
	{ "_id" : "com.theme.game", "clicks" : 2648, "installs" : 425, "organic" : 33 }
	{ "_id" : "com.theme.coolice", "clicks" : 1704, "installs" : 387, "organic" : 182 }
	{ "_id" : "com.theme.cutegirl", "clicks" : 1660, "installs" : 385, "organic" : 71 }
	{ "_id" : "com.theme.beautifulcheetah", "clicks" : 1568, "installs" : 1422, "organic" : 913 }
	{ "_id" : "com.theme.beigetemptation", "clicks" : 1552, "installs" : 619, "organic" : 157 }
	{ "_id" : "com.theme.freshstyle", "clicks" : 1245, "installs" : 395, "organic" : 58 }
	{ "_id" : "com.theme.flamefootball", "clicks" : 1006, "installs" : 404, "organic" : 185 }
	{ "_id" : "com.theme.colorstar", "clicks" : 955, "installs" : 240, "organic" : 20 }
	{ "_id" : "com.theme.christmasday", "clicks" : 944, "installs" : 237, "organic" : 28 }
	{ "_id" : "com.theme.yose", "clicks" : 879, "installs" : 395, "organic" : 108 }
	{ "_id" : "com.theme.pinkpattern", "clicks" : 810, "installs" : 297, "organic" : 60 }
	
Find

	db.app.aggregate([
	{'$match': {'datetime': {'$gte': '2015-11-23', '$lte': '2015-11-27'},
	'app_id':'com.app.master'}}, 
	{'$project':{'app_id': 1, 'datetime': 1, 'click':{'$cmp':['$click_time',  0]}, 
	'install':{'$cmp':['$installed_at',  0]},'is_organic': 1}},
	{'$group': {'_id': "$datetime", 'clicks':{'$sum': '$click'}, 
	'installs':{'$sum': '$install'}, 'organic':{'$sum': '$is_organic'}}}, 
	{'$sort': {'clicks': -1, 'installs': -1, 'organics': -1}}])

Result:

	{ "_id" : "2015-11-24", "clicks" : 0, "installs" : 40375, "organic" : 40375 }
	{ "_id" : "2015-11-25", "clicks" : , "installs" : 38578, "organic" : 38578 }
	{ "_id" : "2015-11-26", "clicks" : 0, "installs" : 37671, "organic" : 37671 }
	{ "_id" : "2015-11-27", "clicks" : 0, "installs" : 36377, "organic" : 36377 }
	{ "_id" : "2015-11-23", "clicks" : 0, "installs" : 22794, "organic" : 22794 }

![Alt text](/images/MongoDB-dashboard.png)

![Alt text](/images/MongoDB-dashboard2.png)

![Alt text](/images/MongoDB-dashboard3.png)


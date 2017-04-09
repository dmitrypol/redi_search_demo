# Overview

This a demo app to protype using RediSearchRails gem and compare it to redis-search gem.  

* install Redis and RediSearch following http://redisearch.io/Quick_Start/
* install MongoDB (using Mongoid as primary DB)
* git clone && bundle
* rake db:seed
* rails c
* User.ft_search('keyword here')
* Use http://localhost:3000/redis and http://localhost:3000/admin/user to view data

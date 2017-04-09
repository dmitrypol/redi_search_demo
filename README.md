# Overview

This a demo app to protype using RediSearchRails gem and compare it to redis-search gem.  

* install Redis and RediSearch following http://redisearch.io/Quick_Start/
* install MongoDB (primary DB)
* git clone && bundle
* rake db:seed (this will do Redis.flushall so be careful)
* Use http://localhost:3000/redis and http://localhost:3000/admin/user to view data
* Look in Redis DB 0 for RediSearchRails and in DB 1 for redis-search
* Run `rails c`

### Search via RediSearchRails
* User.ft_search('alex')

[2,
"gid://redi-search-demo/User/58eaa070f5740c202f614f72", ["name", "Alex Frami"],
"gid://redi-search-demo/User/58eaa079f5740c202f615d58", ["name", "Mrs. Alex Hauck"]
]

### Search via redis-search:
* User.prefix_match('alex')

[
{"title"=>"Alexa Kunze", "id"=>{"$oid"=>"58eaa084f5740c202f616ea2"}, "type"=>"User", "created_at"=>"2017-04-09T20:58:44.645Z"},
{"title"=>"Alexander Harris", "id"=>{"$oid"=>"58eaa082f5740c202f616b28"}, "type"=>"User", "created_at"=>"2017-04-09T20:58:42.356Z"},
{"title"=>"Alexa Sauer", "id"=>{"$oid"=>"58eaa07df5740c202f616451"}, "type"=>"User", "created_at"=>"2017-04-09T20:58:37.934Z"},
{"title"=>"Alexander Nolan", "id"=>{"$oid"=>"58eaa07df5740c202f61631b"}, "type"=>"User", "created_at"=>"2017-04-09T20:58:37.193Z"},
{"title"=>"Alexander Hayes", "id"=>{"$oid"=>"58eaa073f5740c202f61547d"}, "type"=>"User", "created_at"=>"2017-04-09T20:58:27.793Z"},
{"title"=>"Alex Frami", "id"=>{"$oid"=>"58eaa070f5740c202f614f72"}, "type"=>"User", "created_at"=>"2017-04-09T20:58:24.782Z"}
]


You are like to get different results as the seed file uses https://github.com/stympy/faker to generate random user names

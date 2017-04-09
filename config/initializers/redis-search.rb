require "redis"
require "redis-namespace"
require "redis-search"

# don't forget change namespace
redis = Redis.new(host: '127.0.0.1', port: '6379', db: 1)
# Give a special namespace as prefix for Redis key, when your have more than one project used redis-search, this config will make them work fine.
#redis = Redis::Namespace.new("your_app_name:redis_search", redis: redis)
Redis::Search.configure do |config|
  config.redis = redis
  config.complete_max_length = 100
  config.pinyin_match = true
end

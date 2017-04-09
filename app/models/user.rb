class User < ApplicationRecord
  include Mongoid::Document
  field :name
  field :email
  field :age, type: Integer

  include RediSearchRails
  redi_search_schema   name: 'TEXT'#, email: 'TEXT', age: 'NUMERIC'

  # include Redis::Search
  # redis_search title_field: :name

end

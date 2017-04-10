class User < ApplicationRecord
  # include Mongoid::Document
  # include Mongoid::Timestamps::Short
  # field :name
  # field :email
  # field :age, type: Integer

  include Ohm::Timestamps
  include Ohm::DataTypes
  include Ohm::Callbacks
  attribute :name
  attribute :email
  attribute :age, Type::Integer
  index :name
  index :email
  index :age

  include RediSearchRails
  redi_search_schema   name: 'TEXT', email: 'TEXT', age: 'NUMERIC'

  # include Redis::Search
  # redis_search title_field: :name

end

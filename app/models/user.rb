class User < ApplicationRecord

  include Ohm::Timestamps
  include Ohm::DataTypes
  include Ohm::Callbacks

  attribute :name
  attribute :email
  attribute :age, Type::Integer
  attribute :status
  attribute :roles, Type::Array
  collection :articles, :Article

  index :name
  index :email
  index :age
  index :status
  index :roles
  #unique :email

  include RediSearchRails
  redi_search_schema   name: 'TEXT', email: 'TEXT', age: 'NUMERIC', status: 'TEXT'

  # include Redis::Search
  # redis_search title_field: :name

end

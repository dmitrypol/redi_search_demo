class User < ApplicationRecord

  include Ohm::Timestamps
  include Ohm::DataTypes
  include Ohm::Callbacks

  attribute :name
  attribute :email
  attribute :status
  attribute :age, Type::Integer
  attribute :height, Type::Integer
  attribute :location
  # attribute :roles, Type::Array

  #collection :articles, :Article

  # index :name
  # index :email
  # index :age
  # index :status
  # index :roles
  #unique :email

  include RediSearchRails
  redi_search_schema   name: 'TEXT', email: 'TEXT', status: 'TEXT', age: 'NUMERIC', height: 'NUMERIC'#, location: 'GEO'

  # include Redis::Search
  # redis_search title_field: :name

end

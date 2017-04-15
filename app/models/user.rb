class User < ApplicationRecord

  include Ohm::Timestamps
  include Ohm::DataTypes
  include Ohm::Callbacks
  attribute :f_name
  attribute :l_name
  attribute :email
  attribute :age, Type::Integer
  attribute :status
  index :f_name
  index :l_name
  index :email
  index :age
  index :status
  #unique :email

  include RediSearchRails
  redi_search_schema   name: 'TEXT', email: 'TEXT', age: 'NUMERIC'

  # include Redis::Search
  # redis_search title_field: :name

end

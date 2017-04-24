class Article < ApplicationRecord

  include Ohm::Timestamps
  include Ohm::DataTypes
  include Ohm::Callbacks

  attribute :title
  attribute :body
  reference :user, :User

  index :title
  index :body

  include RediSearchRails
  redi_search_schema   title: 'TEXT', body: 'TEXT'

end

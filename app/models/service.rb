class Service
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :price, type: Integer
  field :position

  belongs_to :category

  default_scope -> {asc :position}

end

class Service
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :price, type: Integer

  belongs_to :category

  default_scope -> {asc :created_at}

end

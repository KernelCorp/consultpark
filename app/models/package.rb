class Package
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :discount_price, type: Integer

  belongs_to :category
  has_and_belongs_to_many :services

  default_scope -> {asc :created_at}

  def get_price
    price = 0
    self.services.each do |service|
      price = price + service.price unless service.price.nil?
    end
    price
  end

  def get_name
    self.category.title + ' | ' + self.title
  end

end

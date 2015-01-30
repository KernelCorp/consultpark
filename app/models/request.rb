class Request
  include Mongoid::Document
  include Mongoid::Timestamps

  field :phone, type: String
  field :name, type: String
  field :email, type: String
  field :from, type: String

end
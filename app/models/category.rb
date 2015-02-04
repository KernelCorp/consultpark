class Category
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :title, type: String

  has_mongoid_attached_file :title_image
  validates_attachment_content_type :title_image, content_type: ["image/jpg", "image/jpeg", "image/png"]

  has_many :services
  has_many :packages

  default_scope -> {desc :created_at}

end

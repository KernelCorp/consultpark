class News
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :title, type: String
  field :preview, type: String
  field :text, type: String

  has_mongoid_attached_file :pic,
                            styles:{
                                :medium   => ['105x105#', :jpg]
                            }
  validates_attachment_content_type :pic, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  default_scope -> {desc :created_at}

end
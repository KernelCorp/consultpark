class News
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :title, type: String
  field :preview, type: String
  field :text, type: String

  has_mongoid_attached_file :pic

  default_scope -> {desc :created_at}

end
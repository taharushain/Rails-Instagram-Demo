class Post < ApplicationRecord
  validates :image, presence: true

  # has_attached_file :image, styles: { :medium => "640x" }
  has_attached_file :image, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end

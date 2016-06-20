class Post < ActiveRecord::Base
	has_one :image
	belongs_to :user
	has_attached_file :image ,styles: { medium: "100x100", thumb: "101x101" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

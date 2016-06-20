class Image < ActiveRecord::Base
	has_attached_file :image ,styles: { medium: "100x100", thumb: "101x101" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	belongs_to :user   , polimorphic  :true
	belongs_to :post    ,polimorphic :true

end

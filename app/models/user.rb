class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :image ,styles: { medium: "100x100", thumb: "101x101" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
 devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :invitable 
           
has_many :posts
has_one :image
end

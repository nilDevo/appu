class Product < ActiveRecord::Base

has_attached_file :image_name, :styles => { :medium => "300x300>", 
	:thumb => "100x100>" }, :default_url => "/images/:style/NM.png"
#validates :image_name, :attachment_presence => true

end

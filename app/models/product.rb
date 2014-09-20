class Product < ActiveRecord::Base

has_attached_file :image_name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/NM.png"
validates_attachment_content_type :image_name, :content_type => /\Aimage\/.*\Z/
validates :image_name, :attachment_presence => true

#validates_attachment_content_type :image_name, :content_type => /\Aimage/

  # Validate filename
  #validates_attachment_file_name :image_name, :matches => [/png\Z/, /jpe?g\Z/]
end
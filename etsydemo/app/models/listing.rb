class Listing < ActiveRecord::Base
	has_attached_file :image, :style => { :medium => '200x', :thumb => "100x100>" }, :default_url => "default.jpg"
end

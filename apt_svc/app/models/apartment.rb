class Apartment < ActiveRecord::Base
  attr_accessible :address, :baths, :beds, :name, :rent
end

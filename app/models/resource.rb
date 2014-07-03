class Resource < ActiveRecord::Base
	geocoded_by :address #using a method to combine street address with city for geocoding
	after_validation :geocode, :if => :address_changed?
end

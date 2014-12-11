class Resource < ActiveRecord::Base
	validates :address, presence: true  # checking that an address has been entered; there is also HTML5 on client-side checking that field is not blank
	geocoded_by :address #getting street address with city for geocoding
	after_validation :geocode, :if => :address_changed?
end

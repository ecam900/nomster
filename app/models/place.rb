class Place < ActiveRecord::Base
	#Kamari Pagination-----
	paginates_per 5
	belongs_to :user
	
	#Geocoding-------------
	geocoded_by :address
	after_validation :geocode
	
	#Validation-------------
	validates :name, :length => { minimum: 3 }, :presence => true
	validates :address, :length => { minimum: 10}, :presence => true
	validates :description, :length => { minimum: 15}, :presence => true
end

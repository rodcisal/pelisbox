class Pelicula < ActiveRecord::Base
	extend FriendlyId
	belongs_to :uploader
  attr_accessible :descripcion, :iframe, :imagen, :titulo, :uploader_id
  friendly_id :titulo


  def self.to_csv 
  	CSV.generate do |csv|
  		csv << column_names
  		all.each do |product|
  			csv << product.attributes.values_at(*column_names)
  		end
  	end
  end
  
end

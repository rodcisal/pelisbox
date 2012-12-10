class Pelicula < ActiveRecord::Base
	extend FriendlyId
	belongs_to :uploader
  attr_accessible :descripcion, :iframe, :imagen, :titulo, :uploader_id
  friendly_id :titulo

#Metodo para exportar a CSV
  def self.to_csv 
  	CSV.generate do |csv|
  		csv << column_names
  		all.each do |product|
  			csv << product.attributes.values_at(*column_names)
  		end
  	end
  end

def self.text_search(query)
  if query.present?
    where("titulo @@ :q", q: "%#{query}%")
  else
    scoped
  end
end
  
end

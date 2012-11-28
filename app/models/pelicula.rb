class Pelicula < ActiveRecord::Base
	extend FriendlyId
	belongs_to :uploader
  attr_accessible :descripcion, :iframe, :imagen, :titulo, :uploader_id
  friendly_id :titulo
end

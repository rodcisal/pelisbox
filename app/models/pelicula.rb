class Pelicula < ActiveRecord::Base
	belongs_to :uploader
  attr_accessible :descripcion, :iframe, :imagen, :titulo
end

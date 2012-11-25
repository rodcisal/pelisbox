class Pelicula < ActiveRecord::Base
  attr_accessible :descripcion, :iframe, :imagen, :titulo
end

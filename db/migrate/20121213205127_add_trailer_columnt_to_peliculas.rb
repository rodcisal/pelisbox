class AddTrailerColumntToPeliculas < ActiveRecord::Migration
  def change
    add_column :peliculas, :trailer, :text
  end
end

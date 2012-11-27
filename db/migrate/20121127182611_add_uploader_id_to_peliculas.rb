class AddUploaderIdToPelicula < ActiveRecord::Migration
  def change
  	add_column :pelicula, :uploader_id, :string 
  end
end

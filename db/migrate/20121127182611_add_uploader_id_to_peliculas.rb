class AddUploaderIdToPeliculas < ActiveRecord::Migration
  def change
  	add_column :peliculas, :uploader_id, :string 
  end
end

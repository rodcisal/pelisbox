class CambioTipoDatoDescripcion < ActiveRecord::Migration
  def change
  	change_column :peliculas, :descripcion, :text, :limit => nil
  end
end

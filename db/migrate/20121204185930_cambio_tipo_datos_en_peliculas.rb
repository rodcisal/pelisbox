class CambioTipoDatosEnPeliculas < ActiveRecord::Migration
  def change
  	change_column :peliculas, :iframe, :text
  end
end

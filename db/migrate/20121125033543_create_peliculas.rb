class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.string :titulo
      t.string :descripcion
      t.string :iframe
      t.string :imagen

      t.timestamps
    end
  end
end

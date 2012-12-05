class CreateEstrenos < ActiveRecord::Migration
  def change
    create_table :estrenos do |t|
      t.string :titulo
      t.text :descripcion
      t.string :nota
      t.string :categoria
      t.text :iframe
      t.text :opcion1
      t.text :opcion2
      t.string :imagen

      t.timestamps
    end
  end
end

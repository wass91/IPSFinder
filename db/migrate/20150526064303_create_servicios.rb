class CreateServicios < ActiveRecord::Migration
  def change
    drop_table :servicios
    create_table :servicios do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

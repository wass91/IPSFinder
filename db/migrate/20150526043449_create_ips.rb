class CreateIps < ActiveRecord::Migration
  def change
    drop_table :ips
    create_table :ips do |t|
      t.string :nombre
      t.float :longitud
      t.float :latitud
      t.string :horario_atencion
      t.string :direccion

      t.timestamps null: false
    end
  end
end

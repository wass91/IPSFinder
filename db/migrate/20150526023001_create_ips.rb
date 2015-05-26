class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips do |t|
      t.string :nombre
      t.float :longitud
      t.float :latitud
      t.string :horario_atencion

      t.timestamps null: false
    end
  end
end

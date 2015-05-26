class DatosUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :identificacion, :string
    add_column :usuarios, :nombre, :string
    add_column :usuarios, :telefono, :string
  end
end

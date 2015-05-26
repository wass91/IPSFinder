class CreateServiciosIps < ActiveRecord::Migration
  def self.up
      create_table :servicios_ips, :id => false do |t|
          t.integer :servicio_id
          t.integer :ip_id
      end
  end
  
  def self.down
      drop_table :servicios_ips
  end
end
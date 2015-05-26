class CrearEpsIps < ActiveRecord::Migration
  def self.up
      create_table :eps_ips, :id => false do |t|
          t.integer :ip_id
          t.integer :ep_id
      end
  end
  
  def self.down
      drop_talbe :eps_ips
  end
end

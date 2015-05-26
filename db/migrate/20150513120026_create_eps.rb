class CreateEps < ActiveRecord::Migration
  def change
    create_table :eps do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

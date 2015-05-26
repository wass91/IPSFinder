class CreateEps < ActiveRecord::Migration
  def change
    drop_table :eps
    create_table :eps do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

class CreateVgames < ActiveRecord::Migration[6.1]
  def change
    create_table :vgames do |t|
      t.string :title, null: false
      t.text :description
      t.decimal :price, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end

class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity, null: false, default: 0
      t.string :price, null: false, precision: 15, scale: 2
      t.string :decimal

      t.timestamps
      add_foreign_key :order_items, :orders, name: 'fk_order_items_to_order'
      add_foreign_key :order_items, :vgame, name: 'fk_order_items_to_vgame'
    end
  end
end

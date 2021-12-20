class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.decimal :sub_total, null: false, precision: 15, scale: 2
      t.decimal :GST, null: false, precision: 15, scale: 2
      t.decimal :PST, null: false, precision: 15, scale: 2
      t.decimal :HST, null: false, precision: 15, scale: 2
      t.string :status, null: false
      t.timestamps
    end
  end
end

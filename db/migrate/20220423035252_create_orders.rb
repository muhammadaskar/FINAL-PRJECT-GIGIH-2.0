class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.integer :item_id
      t.float :total
      t.datetime :order_date
      t.string :status
      t.integer :quantity
      t.float :item_price

      t.timestamps
    end
  end
end

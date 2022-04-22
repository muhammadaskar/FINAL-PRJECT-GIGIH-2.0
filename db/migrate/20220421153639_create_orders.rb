class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.float :total
      t.datetime :order_date
      t.string :status

      t.timestamps
    end
    add_index :orders, :customer_id
  end
end

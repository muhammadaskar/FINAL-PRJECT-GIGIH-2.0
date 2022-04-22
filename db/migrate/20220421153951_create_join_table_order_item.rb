class CreateJoinTableOrderItem < ActiveRecord::Migration[7.0]
  def change
    create_join_table :orders, :items, table_name: :order_details do |t|
      t.index [:order_id, :item_id]
      t.index [:item_id, :order_id]
      t.integer :quantity
      t.float :item_price
    end
  end
end

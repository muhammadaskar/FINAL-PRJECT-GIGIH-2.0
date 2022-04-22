class CreateJoinTableItemCategory < ActiveRecord::Migration[7.0]
  def change
    create_join_table :items, :categories, table_name:  :categorization do |t|
      t.index [:item_id, :category_id]
      t.index [:category_id, :item_id]
    end
  end
end

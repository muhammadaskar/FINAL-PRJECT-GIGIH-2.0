class Order < ApplicationRecord
    belongs_to :customer
    has_and_belongs_to_many :items, join_table: 'order_details'
end

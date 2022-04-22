class Item < ApplicationRecord
    has_and_belongs_to_many :orders, join_table: 'order_details'
    has_and_belongs_to_many :categories, join_table: 'categorization'

    validates :name, presence: true, uniqueness: true
    validates :desc, length: { maximum: 150 }
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end

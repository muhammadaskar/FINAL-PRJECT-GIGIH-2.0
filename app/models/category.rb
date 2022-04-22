class Category < ApplicationRecord
    has_and_belongs_to_many :items, join_table: 'categorization'
end

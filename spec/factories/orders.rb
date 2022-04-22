FactoryBot.define do
  factory :order do
    customer_id { 1 }
    total { 1.5 }
    order_date { "2022-04-21 22:36:39" }
    status { "MyString" }
  end
end

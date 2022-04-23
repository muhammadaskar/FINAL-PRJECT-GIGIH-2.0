FactoryBot.define do
  factory :order do
    name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    address { "MyString" }
    item_id { 1 }
    total { 1.5 }
    order_date { "2022-04-23 11:52:52" }
    status { "MyString" }
    quantity { 1 }
    item_price { 1.5 }
  end
end

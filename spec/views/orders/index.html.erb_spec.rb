require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        name: "Name",
        email: "Email",
        phone: "Phone",
        address: "Address",
        item_id: 2,
        total: 3.5,
        status: "Status",
        quantity: 4,
        item_price: 5.5
      ),
      Order.create!(
        name: "Name",
        email: "Email",
        phone: "Phone",
        address: "Address",
        item_id: 2,
        total: 3.5,
        status: "Status",
        quantity: 4,
        item_price: 5.5
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.5.to_s, count: 2
  end
end

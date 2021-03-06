require 'rails_helper'

RSpec.describe "customer_orders/index", type: :view do
  before(:each) do
    assign(:customer_orders, [
      CustomerOrder.create!(
        name: "Name",
        email: "Email",
        phone: "Phone",
        address: "Address"
      ),
      CustomerOrder.create!(
        name: "Name",
        email: "Email",
        phone: "Phone",
        address: "Address"
      )
    ])
  end

  it "renders a list of customer_orders" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
  end
end

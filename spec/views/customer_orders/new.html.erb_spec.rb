require 'rails_helper'

RSpec.describe "customer_orders/new", type: :view do
  before(:each) do
    assign(:customer_order, CustomerOrder.new(
      name: "MyString",
      email: "MyString",
      phone: "MyString",
      address: "MyString"
    ))
  end

  it "renders new customer_order form" do
    render

    assert_select "form[action=?][method=?]", customer_orders_path, "post" do

      assert_select "input[name=?]", "customer_order[name]"

      assert_select "input[name=?]", "customer_order[email]"

      assert_select "input[name=?]", "customer_order[phone]"

      assert_select "input[name=?]", "customer_order[address]"
    end
  end
end

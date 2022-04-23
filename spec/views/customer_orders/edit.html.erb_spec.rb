require 'rails_helper'

RSpec.describe "customer_orders/edit", type: :view do
  before(:each) do
    @customer_order = assign(:customer_order, CustomerOrder.create!(
      name: "MyString",
      email: "MyString",
      phone: "MyString",
      address: "MyString"
    ))
  end

  it "renders the edit customer_order form" do
    render

    assert_select "form[action=?][method=?]", customer_order_path(@customer_order), "post" do

      assert_select "input[name=?]", "customer_order[name]"

      assert_select "input[name=?]", "customer_order[email]"

      assert_select "input[name=?]", "customer_order[phone]"

      assert_select "input[name=?]", "customer_order[address]"
    end
  end
end

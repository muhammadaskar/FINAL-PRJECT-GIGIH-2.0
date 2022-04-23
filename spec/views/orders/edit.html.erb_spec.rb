require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      name: "MyString",
      email: "MyString",
      phone: "MyString",
      address: "MyString",
      item_id: 1,
      total: 1.5,
      status: "MyString",
      quantity: 1,
      item_price: 1.5
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[name]"

      assert_select "input[name=?]", "order[email]"

      assert_select "input[name=?]", "order[phone]"

      assert_select "input[name=?]", "order[address]"

      assert_select "input[name=?]", "order[item_id]"

      assert_select "input[name=?]", "order[total]"

      assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[quantity]"

      assert_select "input[name=?]", "order[item_price]"
    end
  end
end

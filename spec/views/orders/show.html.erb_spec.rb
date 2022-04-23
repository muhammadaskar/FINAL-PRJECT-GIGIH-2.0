require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      name: "Name",
      email: "Email",
      phone: "Phone",
      address: "Address",
      item_id: 2,
      total: 3.5,
      status: "Status",
      quantity: 4,
      item_price: 5.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5.5/)
  end
end

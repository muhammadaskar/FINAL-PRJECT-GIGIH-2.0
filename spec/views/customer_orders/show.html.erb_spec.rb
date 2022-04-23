require 'rails_helper'

RSpec.describe "customer_orders/show", type: :view do
  before(:each) do
    @customer_order = assign(:customer_order, CustomerOrder.create!(
      name: "Name",
      email: "Email",
      phone: "Phone",
      address: "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
  end
end

require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      name: "MyString",
      desc: "MyString",
      price: 1.5
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[desc]"

      assert_select "input[name=?]", "item[price]"
    end
  end
end

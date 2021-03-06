require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :title => "MyString",
      :descirption => "MyText"
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_title[name=?]", "product[title]"
      assert_select "textarea#product_descirption[name=?]", "product[descirption]"
    end
  end
end

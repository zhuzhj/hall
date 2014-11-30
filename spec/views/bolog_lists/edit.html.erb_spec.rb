require 'spec_helper'

describe "bolog_lists/edit" do
  before(:each) do
    @bolog_list = assign(:bolog_list, stub_model(BologList,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit bolog_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bolog_list_path(@bolog_list), "post" do
      assert_select "input#bolog_list_title[name=?]", "bolog_list[title]"
      assert_select "textarea#bolog_list_description[name=?]", "bolog_list[description]"
    end
  end
end

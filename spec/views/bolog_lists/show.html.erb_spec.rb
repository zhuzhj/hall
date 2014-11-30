require 'spec_helper'

describe "bolog_lists/show" do
  before(:each) do
    @bolog_list = assign(:bolog_list, stub_model(BologList,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end

require 'spec_helper'

describe "sales/show" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :ammount => "Ammount",
      :company => "Company",
      :salesrep_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ammount/)
    rendered.should match(/Company/)
    rendered.should match(/1/)
  end
end

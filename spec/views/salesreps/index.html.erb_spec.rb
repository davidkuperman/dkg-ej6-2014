require 'spec_helper'

describe "salesreps/index" do
  before(:each) do
    assign(:salesreps, [
      stub_model(Salesrep,
        :name => "Name",
        :lastname => "Lastname",
        :territory => "Territory",
        :quota => "Quota"
      ),
      stub_model(Salesrep,
        :name => "Name",
        :lastname => "Lastname",
        :territory => "Territory",
        :quota => "Quota"
      )
    ])
  end

  it "renders a list of salesreps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Territory".to_s, :count => 2
    assert_select "tr>td", :text => "Quota".to_s, :count => 2
  end
end

require 'spec_helper'

describe "salesreps/show" do
  before(:each) do
    @salesrep = assign(:salesrep, stub_model(Salesrep,
      :name => "Name",
      :lastname => "Lastname",
      :territory => "Territory",
      :quota => "Quota"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Lastname/)
    rendered.should match(/Territory/)
    rendered.should match(/Quota/)
  end
end

require 'spec_helper'

describe "salesreps/new" do
  before(:each) do
    assign(:salesrep, stub_model(Salesrep,
      :name => "MyString",
      :lastname => "MyString",
      :territory => "MyString",
      :quota => "MyString"
    ).as_new_record)
  end

  it "renders new salesrep form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", salesreps_path, "post" do
      assert_select "input#salesrep_name[name=?]", "salesrep[name]"
      assert_select "input#salesrep_lastname[name=?]", "salesrep[lastname]"
      assert_select "input#salesrep_territory[name=?]", "salesrep[territory]"
      assert_select "input#salesrep_quota[name=?]", "salesrep[quota]"
    end
  end
end

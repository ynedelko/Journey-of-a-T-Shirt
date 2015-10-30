require 'rails_helper'

RSpec.describe "countries/index", type: :view do
  before(:each) do
    assign(:countries, [
      Country.create!(
        :name => "Name",
        :us_imports => 1,
        :min_wage => 2,
        :poverty => 3,
        :education => 4,
        :image => "Image"
      ),
      Country.create!(
        :name => "Name",
        :us_imports => 1,
        :min_wage => 2,
        :poverty => 3,
        :education => 4,
        :image => "Image"
      )
    ])
  end

  it "renders a list of countries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "countries/new", type: :view do
  before(:each) do
    assign(:country, Country.new(
      :name => "MyString",
      :us_imports => 1,
      :min_wage => 1,
      :poverty => 1,
      :education => 1,
      :image => "MyString"
    ))
  end

  it "renders new country form" do
    render

    assert_select "form[action=?][method=?]", countries_path, "post" do

      assert_select "input#country_name[name=?]", "country[name]"

      assert_select "input#country_us_imports[name=?]", "country[us_imports]"

      assert_select "input#country_min_wage[name=?]", "country[min_wage]"

      assert_select "input#country_poverty[name=?]", "country[poverty]"

      assert_select "input#country_education[name=?]", "country[education]"

      assert_select "input#country_image[name=?]", "country[image]"
    end
  end
end

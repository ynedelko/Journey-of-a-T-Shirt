require 'rails_helper'

describe "add a country process" do
  it "allows a user to add a new country with AJAX functionality", js: true do
    visit countries_path
    click_on "New Country"
    fill_in "Name", :with => "Pakistan"
    fill_in "Us imports", :with => "1.5"
    click_on "Create Country"
    expect(page).to have_content("Pakistan")
  end
end

require 'rails_helper'

describe "add a visitors answer process" do
  it "allows a visitor to provide an answer with AJAX functionality", js: true do
    visit visitors_path
    click_on "Add Answer"
    fill_in "Name", :with => "Larry"
    fill_in "Tshirt made", :with => "Pakistan"
    fill_in "Comment", :with => "Woah!"
    click_on "Create Visitor"
    expect(page).to have_content("Pakistan")
  end
end

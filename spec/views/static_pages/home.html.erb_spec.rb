require 'rails_helper'

describe "Home Page" do
	
	it "should have the content 'Surf Trends'" do
		visit 'static_pages/home'
		expect(page).to have_content('Surf Trends')
	end

	it "should have the base title" do
    visit '/static_pages/home'
    expect(page).to have_title("Surf Trends")
  end

  it "should have a custom page title" do
    visit '/static_pages/home'
    expect(page).to have_title("| Home")
  end
end

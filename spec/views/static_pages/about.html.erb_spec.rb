require 'rails_helper'

describe "About Page" do
	
	it "should have the content 'post-session conditions'" do
		visit 'static_pages/about'
		expect(page).to have_content('post-session conditions')
	end

	it "should have the base title" do
    visit '/static_pages/home'
    expect(page).to have_title("Surf Trends")
  end

  it "should have a custom page title" do
    visit '/static_pages/about'
    expect(page).to have_title("| About")
  end
end


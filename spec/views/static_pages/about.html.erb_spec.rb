require 'rails_helper'

describe "About Page" do
	
	it "should have the content 'post-session conditions'" do
		visit 'static_pages/about'
		expect(page).to have_content('post-session conditions')
	end

	it "should have the title 'Home'" do
    visit '/static_pages/about'
    expect(page).to have_title("Surf-Buzz | About")
  end
end


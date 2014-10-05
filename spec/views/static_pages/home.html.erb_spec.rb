require 'rails_helper'

describe "Home Page" do
	
	it "should have the content 'Surf-Buzz'" do
		visit 'static_pages/home'
		expect(page).to have_content('Surf-Buzz')
	end
end

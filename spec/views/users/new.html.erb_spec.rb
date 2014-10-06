require 'rails_helper'

describe "New User Page" do
	
	it "should have the content 'Sign Up For An Account'" do
		visit 'users/new'
		expect(page).to have_content('Sign Up For An Account')
	end

	it "should have the base title" do
    visit '/users/new'
    expect(page).to have_title("Surf Trends")
  end

  it "should have a custom page title" do
    visit '/users/new'
    expect(page).to have_title("| Sign Up")
  end
end
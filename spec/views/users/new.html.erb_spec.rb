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

  it "should submit the new user when you click 'create user'" do
  	visit 'users/new'
		fill_in 'Username', :with => 'surfnut'
    fill_in 'Email', :with => 'tim@example.com'
    fill_in 'Password', :with => 'surfnut2014'
    fill_in 'Confirm password', :with => 'surfnut2014'
  	click_button "Create User"
  	expect(view).to render_template("show")
  end
end
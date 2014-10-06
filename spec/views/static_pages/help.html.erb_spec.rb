require 'rails_helper'

describe "Help Page" do
  
  it "should have the content 'Help'" do
    visit 'static_pages/help'
    expect(page).to have_content('Help')
  end

  it "should have the base title" do
    visit '/static_pages/help'
    expect(page).to have_title("Surf Trends")
  end

  it "should have a custom page title" do
    visit '/static_pages/help'
    expect(page).to have_title("| Help")
  end
end
require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

	before :each do
  	@valid_attributes = {
  		email: 'tim@example.com',
  		password: 'surfnut2014',
  		username: 'surfnut',
  	}
  end

	describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
  	it "responds successfully with an HTTP 201 status code" do
  		post :create, user: @valid_attributes
  		expect(response).to have_http_status(302)
  	end

  	it "renders the show template" do
  		post :create, user: @valid_attributes
  		expect(response).to redirect_to(assigns[:user])
  	end
  end

end

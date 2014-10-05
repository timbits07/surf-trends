require 'rails_helper'

RSpec.describe User, :type => :model do
  before :each do
  	@valid_attributes = {
  		email: 'tim@example.com',
  		password: 'surfnut2014',
  		username: 'surfnut',
  	}
  end

  describe 'validations' do
  	context 'when email is missing' do
  		it 'is not valid' do
  			user = User.new(@valid_attributes.merge(email: ''))
  			expect(user).not_to be_valid
  		end
  	end

  	context 'when password is missing' do
  		it 'is not valid' do
  			user = User.new(@valid_attributes.merge(password: ''))
  			expect(user).not_to be_valid
  		end
  	end

  	context 'when password is too short' do
  		it 'is not valid' do
  			user = User.new(@valid_attributes.merge(password: 'surfy'))
  			expect(user).not_to be_valid
  		end
  	end

  	context 'when username is missing' do
  		it 'is not valid' do
  			user = User.new(@valid_attributes.merge(username: ''))
  			expect(user).not_to be_valid
  		end
  	end

  	context 'when email is incorrect format' do
  		it 'is not valid' do
  			user = User.new(@valid_attributes.merge(email: 'tim.someone.com'))
  			expect(user).not_to be_valid
  		end
  	end

  	context 'when username is not unique' do
  		it 'is not valid' do
  			user = User.create(@valid_attributes.merge(username: 'surfdude'))
  			user2 = User.new(@valid_attributes.merge(username: 'surfdude'))
  			expect(user2).not_to be_valid
  		end
  	end
  end


end

require 'rails_helper'

RSpec.describe '/categories', type: :feature do
  before :each do
    @user = User.create(name: 'Bush', email: 'test@example.com', password: 'password')
    visit new_user_session_path
    within('body') do
      fill_in 'user_email', with: 'test@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Log in'
    sleep 3
  end

  it 'Check homepage content' do
    expect(page.body).to include('Log out')
    expect(page.body).to include('Add category')
  end
end

require 'rails_helper'

describe 'User should be able to login' do
  let(:user){User.create(email: 'alexis@gmail.com', password: 'veryweakpassword')}

  it 'allows user to see the front page once they input correct credentials' do
    visit root_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'

    expect(current_path).to eq root_path
    expect(page).to have_content 'Hello world!'
  end
end
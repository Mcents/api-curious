require 'rails_helper'

describe 'login' do
  it 'can log in a user with github' do
    visit "/"
    stub_omniauth


    expect(page.status_code).to eq(200)
    expect(current_path).to eq(root_path)

    expect(page).to have_content("Login with Github")
    click_link 'Login with Github'

    expect(current_path).to eq(users_path)
    expect(page).to have_content("Michael Centrelli")
  end
end

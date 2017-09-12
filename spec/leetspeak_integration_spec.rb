require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('leetspeak translation', {:type => :feature}) do
  it "processes the user entry and returns input in leetspeak" do
    visit('/')
    fill_in('sentence', :with => 'I am so leet.')
    click_button('Go!')
    expect(page).to have_content('1 4m s0 l337.')
  end
end

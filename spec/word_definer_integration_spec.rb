require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('contacts,', {:type => :feature}) do
  it('Hold and display word list') do
    visit('/')
    fill_in('word', :with => 'Happy')
    fill_in('word_def', :with => 'An emotion')
    click_button('Add word')
    expect(page).to have_content ('Happy')
  end
end

require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'homepage displays' do
  scenario 'user can see welcome on the homepage' do
    visit '/'
    expect(page).to have_content('Welcome')
    click_link('Add A Task')
    fill_in('task_field', :with => 'clean')
    click_on 'Submit'
    expect(page).to have_content('clean')
  end
end

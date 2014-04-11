require 'spec_helper'
require 'capybara/rspec'
require './app'

Capybara.app = App

feature 'homepage displays' do

  before do
    DB[:tasks].delete
  end

  scenario 'user can see welcome on the homepage' do
    visit '/'
    expect(page).to have_content('Welcome')
    click_link 'Add Task'
    fill_in('task_field', :with => 'clean')
    click_on 'Submit'
    expect(page).to have_content('clean')
  end
end

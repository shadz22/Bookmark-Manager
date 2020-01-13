require 'spec_helper'

feature 'Visiting homepage' do
  scenario 'see the message on the homepage' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end
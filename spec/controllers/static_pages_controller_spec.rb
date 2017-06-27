require 'rails_helper'

feature "Home page" do

  scenario "visit" do
    visit "/static_pages/home"
    page.has_content?('budgetor')
  end
end

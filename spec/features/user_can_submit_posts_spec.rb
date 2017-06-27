require 'rails_helper'
require 'helpers/posts_helper_spec'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    make_new_post
    expect(page).to have_content("Hello, world!")
  end

  scenario "Can see date and time when post is submitted" do
    make_new_post
    expect(page).to have_content(Time.now.strftime("%d/%m/%Y %H:%M"))
  end
end

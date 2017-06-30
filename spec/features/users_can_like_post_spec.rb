require 'rails_helper'

RSpec.feature "Like a Post", type: :feature do
  scenario "User can like a post" do
    sign_in
    make_new_post
    find(:css, '.glyphicon.glyphicon-heart-empty').click
    expect(page).to have_content('Liked')
  end
end

require 'rails_helper'
require 'support/features/clearance_helpers'

RSpec.feature "Make a Comment", type: :feature do
  scenario "Can submit posts and view them" do
    sign_in
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    click_link "Show"
    expect(current_path).to eq("/posts/3")
    click_link "Add Comment"
    expect(current_path).to eq("/comments/new")
    fill_in "comment_text", with: "Nice post!"
    click_button "Submit"
    expect(page).to have_content("Nice post!")
  end

  scenario "Can't create comment when signed out" do
    sign_in
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    sign_out
    visit "/posts"
    click_link "Show"
    click_link "Add Comment"
    expect(current_path).to eq "/sign_in"
  end

  scenario "Comments show user name" do
    visit "/sign_up"
    fill_in "user_email", with: "test@email.com"
    fill_in "user_password", with: "password"
    click_button "Sign up"
    make_new_post
    click_link "Show"
    click_link "Add Comment"
    fill_in "comment_text", with: "Nice post!"
    click_button "Submit"
    expect(page).to have_content("Nice post! by Test")
  end

end

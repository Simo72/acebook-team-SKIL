require 'rails_helper'

RSpec.feature "Make a Comment", type: :feature do
  scenario "Can submit posts and view them" do
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
end

# require 'rails_helper'
#
# RSpec.feature "Make a Comment", type: :feature do
#   scenario "Can submit posts and view them" do
#     visit "/posts"
#     click_link "New post"
#     fill_in "Message", with: "Hello, world!"
#     click_button "Submit"
#     expect(page).to have_content("Hello, world!")
#     click_button "See Post"
#     expect(current_path).to be("posts/1")
#     fill_in "comment", with: "Nice post!"
#     click_button "Submit Comment"
#     expect(current_path).to be("posts/1")
#     expect(page).to have_content("Nice post!")
#   end
# end

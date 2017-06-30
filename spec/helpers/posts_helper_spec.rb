
def make_new_post(message = "Hello, world!")
visit "/posts"
click_button "New Post"
fill_in "post_message", with: message
click_button "Submit"
end

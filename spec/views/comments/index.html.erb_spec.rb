require 'rails_helper'

RSpec.describe "comments/index", type: :view do
    password = "password"
    user = FactoryGirl.create(:user, password: password)
    testpost = user.posts.create(message: 'Lorem Ipsum') 

    before(:each) do

    assign(:comments, [
      testpost.comments.create(text: "Lorem"),
      testpost.comments.create(text: "Ipsum")
    ])
  end

  it "renders a list of comments" do
    render
  end
end

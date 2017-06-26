require 'rails_helper'

RSpec.describe "comments/index", type: :view do
    let(:testpost) { Post.create }

    before(:each) do
      
    assign(:comments, [
      testpost.comments.create(text: "Lorem"),
      testpost.comments.create(text: "Ipsum")
    ])
  end

  fit "renders a list of comments" do
    render
  end
end

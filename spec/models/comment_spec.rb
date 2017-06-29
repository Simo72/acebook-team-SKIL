require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to be }

  password = "password"
  user = FactoryGirl.create(:user, password: password)
  post = user.posts.create(message: 'Lorem Ipsum')
  comment = post.comments.create(text: 'Lorem Ipsum')

  it 'should have an ID' do
      Comment.column_names.include? 'post_id'
  end

  it 'should have text field' do
    Comment.column_names.include? 'text'
  end

  it 'should have correct text' do
    expect(comment.text).to eq("Lorem Ipsum")
  end

  it "Has the id of it's parent post" do
    expect(comment.post_id).to eq(post.id)
  end
end

require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to be }
  let(:testpost) { Post.create }
  subject(:comment) { testpost.comments.create(text: "Lorem Ipsum") }

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
    expect(comment.post_id).to eq(testpost.id)
  end
end

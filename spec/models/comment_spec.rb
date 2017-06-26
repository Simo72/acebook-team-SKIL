require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to be }
  let(:testpost) { Post.create }
  subject(:comment) { testpost.comments.create(text: "Lorem Ipsum") }

  it 'should have an ID' do
    Comment.column_names.include? 'post_id'
  end

  it 'should have text message' do
    Comment.column_names.include? 'text'
  end



end

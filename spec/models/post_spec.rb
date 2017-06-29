require 'rails_helper'


RSpec.describe Post, type: :model do

  password = "password"
  user = FactoryGirl.create(:user, password: password)
  post = user.posts.create(message: 'Lorem Ipsum')

  fit 'has a user id column' do
    expect(post.user_id).to eq(user.id)
  end



end

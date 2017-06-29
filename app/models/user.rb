class User < ApplicationRecord
  include Clearance::User
  has_many :likes, dependent: :destroy
  
end

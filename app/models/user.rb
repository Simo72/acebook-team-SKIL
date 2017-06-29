class User < ApplicationRecord
  include Clearance::User
  has_many :posts

  def name
    self.email.split("@").first.capitalize
  end

end

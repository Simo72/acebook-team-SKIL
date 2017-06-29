require 'rails_helper'


RSpec.describe User, type: :model do

  password = "password"
  user = FactoryGirl.create(:user, password: password)

end

class Comment < ApplicationRecord
  belongs_to :post

  # text :text, String
end

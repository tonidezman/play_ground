class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
end

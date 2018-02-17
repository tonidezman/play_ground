class Post < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :votes, as: :votable
end

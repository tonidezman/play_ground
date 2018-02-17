class Comment < ApplicationRecord
  belongs_to :user
  has_many :votes, as: :votable
end

class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy

  def my_virtual_attribute
    puts "hello"
  end

  def my_virtual_attribute=(msg)
    puts "message ===> #{msg}"
  end
end

class Tag < ApplicationRecord
    has_and_belongs_to_many :pages

    validates :name, uniqueness: true
end

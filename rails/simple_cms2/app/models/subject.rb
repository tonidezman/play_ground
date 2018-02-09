class Subject < ApplicationRecord
    has_many :pages, dependent: :destroy

    validates :name, presence: true,
                     length: { minimum: 5 }
end

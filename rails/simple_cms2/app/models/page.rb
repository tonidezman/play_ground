class Page < ApplicationRecord
    belongs_to :subject
    has_many   :sections, dependent: :destroy
    has_and_belongs_to_many :tags
end

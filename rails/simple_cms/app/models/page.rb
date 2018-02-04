class Page < ApplicationRecord
    belongs_to :subject
    has_many   :sections, dependent: :destroy
    has_many   :section_edits
    has_many   :admin_users, through: :section_edits
end

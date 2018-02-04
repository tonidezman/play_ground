class SectionEdit < ApplicationRecord
    belongs_to :admin_user
    belongs_to :page
end

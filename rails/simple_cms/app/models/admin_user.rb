class AdminUser < ApplicationRecord
    has_secure_password

    has_many :section_edits
    has_many :pages, through: :section_edits
end

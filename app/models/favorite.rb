class Favorite < ApplicationRecord
    belongs_to :user

    validates :print_tag, presence: true
end

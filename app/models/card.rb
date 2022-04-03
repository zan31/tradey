class Card < ApplicationRecord
    belongs_to :user

    validates :price, presence: true
    validates :print_tag, presence: true

    def self.search(keyword)
        where(["LOWER(name) like? OR Lower(print_tag) like?", "%#{keyword}%", "%#{keyword}%"])
    end
end

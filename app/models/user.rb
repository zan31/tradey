class User < ApplicationRecord
  has_many :cards
  has_many :favorites

  def self.search(keyword)
    where(["LOWER(name) like?", "%#{keyword}%"])
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

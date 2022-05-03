class User < ApplicationRecord
  has_many :cards
  has_many :favorites

  def self.current
    Thread.current[:user]
  end

  def self.current=(user)
    Thread.current[:user] = user
  end

  def self.search(keyword)
    where(["LOWER(name) like?", "%#{keyword}%"])
  end
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end

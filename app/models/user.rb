class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true, length: { in: 4..12 }
  validates :password, presence: true

  has_many :posts
  has_many :comments
end

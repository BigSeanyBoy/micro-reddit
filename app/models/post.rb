class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 5..30 }

  belongs_to :user
  has_many :comments
end

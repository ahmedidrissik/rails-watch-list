class Movie < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true, uniqueness: true, length: { minimum: 10 }
  has_many :bookmarks
end

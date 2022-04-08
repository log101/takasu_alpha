class Manga < ApplicationRecord
  validates :title, :user, presence: true
  belongs_to :user
end

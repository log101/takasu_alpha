class Manga < ApplicationRecord
  validates :title, :user, presence: true
  validate :image_exists?
  belongs_to :user

  def image_exists?
    unless File.exists?("app/assets/images/" + image_url) and not image_url.nil?
      errors.add(:image_url, "could not be found!")
    end
  end
end

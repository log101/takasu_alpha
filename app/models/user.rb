class User < ApplicationRecord
  validates :name, :email, presence: true
  has_secure_password

  has_many :books
end

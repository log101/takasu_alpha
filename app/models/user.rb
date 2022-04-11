class User < ApplicationRecord
  validates :name, :email, presence: true
  has_secure_password

  has_many :mangas, dependent: :destroy

  has_many :sent_trades, class_name: 'Trade', foreign_key: :sender_id
  has_many :recieved_trades, class_name: 'Trade', foreign_key: :recipient_id
end

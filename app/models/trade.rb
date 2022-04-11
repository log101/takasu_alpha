class Trade < ApplicationRecord
  has_many :trade_items

  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
end

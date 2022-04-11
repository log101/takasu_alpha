class TradeItem < ApplicationRecord
  belongs_to :trade
  belongs_to :manga
end

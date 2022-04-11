json.extract! trade, :id, :sender_id, :recipient_id, :created_at, :updated_at
json.url trade_url(trade, format: :json)

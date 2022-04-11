class AddStatusToTrades < ActiveRecord::Migration[7.0]
  def change
    add_column :trades, :status, :boolean
  end
end

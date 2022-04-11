class CreateTradeItems < ActiveRecord::Migration[7.0]
  def change
    create_table :trade_items do |t|
      t.references :trade, null: false, foreign_key: true
      t.references :manga, null: false, foreign_key: true

      t.timestamps
    end
  end
end

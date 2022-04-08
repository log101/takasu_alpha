class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.string :volumes
      t.references :user, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end

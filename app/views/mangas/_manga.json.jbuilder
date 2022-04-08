json.extract! manga, :id, :title, :genre, :description, :volumes, :user_id, :image_url, :created_at, :updated_at
json.url manga_url(manga, format: :json)

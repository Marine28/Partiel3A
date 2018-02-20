json.extract! livre, :id, :title, :autor, :description, :category_id, :created_at, :updated_at
json.url livre_url(livre, format: :json)

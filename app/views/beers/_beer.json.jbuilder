json.extract! beer, :id, :name, :desc, :flagship, :img_path, :created_at, :updated_at
json.url beer_url(beer, format: :json)

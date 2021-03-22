json.extract! band, :id, :name, :description, :genre_tags, :created_at, :updated_at
json.url band_url(band, format: :json)

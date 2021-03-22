json.extract! concert, :id, :name, :description, :start_time, :venue_id, :genre_tags, :ilk, :access, :created_at, :updated_at
json.url concert_url(concert, format: :json)

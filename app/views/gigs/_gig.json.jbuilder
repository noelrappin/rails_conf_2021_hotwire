json.extract! gig, :id, :band_id, :concert_id, :order, :duration_minutes, :created_at, :updated_at
json.url gig_url(gig, format: :json)

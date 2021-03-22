json.extract! ticket, :id, :concert_id, :row, :number, :user_id, :status, :ticket_order_id, :shopping_cart_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

json.extract! order, :id, :email, :stripe_token, :created_at, :updated_at
json.url order_url(order, format: :json)

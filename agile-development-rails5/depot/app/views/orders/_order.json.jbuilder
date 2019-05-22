json.extract! order, :id, :name, :addres, :email, :pay_type, :created_at, :updated_at
json.url order_url(order, format: :json)

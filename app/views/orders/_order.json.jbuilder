json.extract! order, :id, :currency, :customer_name, :amount, :order_category_id, :created_at, :updated_at
json.url order_url(order, format: :json)

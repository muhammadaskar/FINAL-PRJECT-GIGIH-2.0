json.extract! customer_order, :id, :name, :email, :phone, :address, :created_at, :updated_at
json.url customer_order_url(customer_order, format: :json)

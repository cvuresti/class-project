json.extract! owner, :id, :name, :phone, :address, :zip, :created_at, :updated_at
json.url owner_url(owner, format: :json)

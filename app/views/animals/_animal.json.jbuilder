json.extract! animal, :id, :name, :species, :owner_id, :created_at, :updated_at
json.url animal_url(animal, format: :json)

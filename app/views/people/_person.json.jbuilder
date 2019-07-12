json.extract! person, :id, :name, :phone, :designation, :organization, :created_at, :updated_at
json.url person_url(person, format: :json)

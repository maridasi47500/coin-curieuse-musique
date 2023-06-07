json.extract! person, :id, :type, :name, :image, :created_at, :updated_at
json.url person_url(person, format: :json)

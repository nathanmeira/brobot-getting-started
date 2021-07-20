json.extract! person, :id, :name, :nickname, :last_name, :age, :height, :weight, :created_at, :updated_at
json.url person_url(person, format: :json)

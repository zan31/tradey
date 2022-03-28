json.extract! card, :id, :name, :img, :created_at, :updated_at
json.url card_url(card, format: :json)

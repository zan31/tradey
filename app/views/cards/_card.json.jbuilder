json.extract! card, :id, :print_tag, :set, :price, :created_at, :updated_at
json.url card_url(card, format: :json)

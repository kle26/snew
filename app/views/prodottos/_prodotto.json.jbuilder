json.extract! prodotto, :id, :marca, :nome, :categoria, :contenuto, :utilizzo, :media_voti, :created_at, :updated_at
json.url prodotto_url(prodotto, format: :json)

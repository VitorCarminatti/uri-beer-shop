json.extract! ingrediente, :id, :nome, :descricao, :produzido, :engenharias_id, :quantidade, :created_at, :updated_at
json.url ingrediente_url(ingrediente, format: :json)

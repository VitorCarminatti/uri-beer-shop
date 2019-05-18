json.extract! processo, :id, :nome, :descricao, :engenharia_id, :status, :created_at, :updated_at
json.url processo_url(processo, format: :json)

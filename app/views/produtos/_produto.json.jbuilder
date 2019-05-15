json.extract! produto, :id, :descricao, :quantidade, :preco, :produzido, :imagem, :created_at, :updated_at
json.url produto_url(produto, format: :json)

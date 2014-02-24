json.array!(@lojas) do |loja|
  json.extract! loja, :id, :nome, :endereco, :tel
  json.url loja_url(loja, format: :json)
end

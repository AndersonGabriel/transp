json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :peso, :dimensao, :numero, :cliente_id, :loja_id
  json.url pedido_url(pedido, format: :json)
end

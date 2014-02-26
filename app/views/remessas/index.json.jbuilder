json.array!(@remessas) do |remessa|
  json.extract! remessa, :id, :codigorastreio, :status, :datapostagem, :previsaoentrega, :pedido_id
  json.url remessa_url(remessa, format: :json)
end

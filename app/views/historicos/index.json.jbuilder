json.array!(@historicos) do |historico|
  json.extract! historico, :id, :evento, :observacao, :data, :remessa_id
  json.url historico_url(historico, format: :json)
end

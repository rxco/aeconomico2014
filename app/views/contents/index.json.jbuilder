json.array!(@contents) do |content|
  json.extract! content, :id, :es_description, :en_description, :subchapter_id
  json.url content_url(content, format: :json)
end

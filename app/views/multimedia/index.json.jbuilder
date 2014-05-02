json.array!(@multimedia) do |multimedium|
  json.extract! multimedium, :id, :type, :url, :content_id
  json.url multimedium_url(multimedium, format: :json)
end

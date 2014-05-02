json.array!(@subchapters) do |subchapter|
  json.extract! subchapter, :id, :es_description, :en_description, :chapter_id
  json.url subchapter_url(subchapter, format: :json)
end

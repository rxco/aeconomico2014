json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :es_description, :en_description, :category_id, :version_id
  json.url chapter_url(chapter, format: :json)
end

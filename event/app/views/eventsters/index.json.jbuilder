json.array!(@eventsters) do |eventster|
  json.extract! eventster, :id, :title, :location, :description
  json.url eventster_url(eventster, format: :json)
end

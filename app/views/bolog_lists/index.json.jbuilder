json.array!(@bolog_lists) do |bolog_list|
  json.extract! bolog_list, :id, :title, :description
  json.url bolog_list_url(bolog_list, format: :json)
end

json.array!(@tests) do |test|
  json.extract! test, :id, :user_id
  json.url test_url(test, format: :json)
end

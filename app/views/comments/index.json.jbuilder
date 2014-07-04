json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_name, :body, :envelop_id
  json.url comment_url(comment, format: :json)
end

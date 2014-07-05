json.array!(@evidences) do |evidence|
  json.extract! evidence, :id, :body, :envelop_id, :encoding, :attached
  json.url evidence_url(evidence, format: :json)
end

json.extract! incomelog, :id, :user_id, :job, :amount, :created_at, :updated_at
json.url incomelog_url(incomelog, format: :json)
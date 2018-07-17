json.extract! user_visit, :id, :user_id, :lake_id, :description, :public, :created_at, :updated_at
json.url user_visit_url(user_visit, format: :json)

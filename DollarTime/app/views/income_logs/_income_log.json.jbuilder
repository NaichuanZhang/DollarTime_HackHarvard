json.extract! income_log, :id, :uid, :name, :session_id, :job_title, :money_made, :created_at, :updated_at
json.url income_log_url(income_log, format: :json)
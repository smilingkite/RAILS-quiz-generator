json.extract! question, :id, :vraag, :image_url, :created_at, :updated_at
json.url question_url(question, format: :json)

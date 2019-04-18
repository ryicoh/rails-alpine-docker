json.extract! book, :id, :title, :description, :body, :ISBN, :created_at, :updated_at
json.url book_url(book, format: :json)

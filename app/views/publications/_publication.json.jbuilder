json.extract! publication, :id, :name, :page_height, :columns, :organisation_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)

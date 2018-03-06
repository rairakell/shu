json.extract! image_link, :id, :image_id, :fiction_id, :created_at, :updated_at
json.url image_link_url(image_link, format: :json)

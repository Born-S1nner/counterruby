json.extract! pets_list, :id, :specie, :owner, :pet_name, :owned_date, :created_at, :updated_at
json.url pets_list_url(pets_list, format: :json)

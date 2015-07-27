json.array!(@posts) do |post|
  json.extract! post, :id, :title, :last_edit_edit, :type, :user_id_id
  json.url post_url(post, format: :json)
end

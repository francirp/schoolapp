json.array!(@rewards) do |reward|
  json.extract! reward, :name, :points_to_redeem, :adult_id, :kid_id
  json.url reward_url(reward, format: :json)
end

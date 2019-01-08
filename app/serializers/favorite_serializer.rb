class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :user_id
end

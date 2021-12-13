class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :login, :avatar_url, :slug, :name
end
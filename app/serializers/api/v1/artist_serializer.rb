class Api::V1::ArtistSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
end

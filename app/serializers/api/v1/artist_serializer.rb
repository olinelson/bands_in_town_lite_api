class Api::V1::ArtistSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :bands_in_town_id, :url, :image_url, :thumb_url, :facebook_page_url, :mbid, :tracker_count, :upcoming_event_count, :events
end

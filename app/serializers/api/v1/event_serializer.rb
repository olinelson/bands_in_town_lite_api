class Api::V1::EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :bands_in_town_id, :artist_id, :url, :on_sale_datetime, :datetime, :venue_country, :venue_city, :venue_latitude, :venue_name, :venue_region, :venue_longitude, :venue_name, :lineup, :ticket_url, :ticket_status, :artist
end

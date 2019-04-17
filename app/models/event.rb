class Event < ApplicationRecord
    belongs_to :artist, primary_key: "bands_in_town_id"
end

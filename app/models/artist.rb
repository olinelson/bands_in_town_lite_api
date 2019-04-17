class Artist < ApplicationRecord
    has_many :events, primary_key: "bands_in_town_id", foreign_key: "artist_id"
end

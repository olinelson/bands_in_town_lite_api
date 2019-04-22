class Artist < ApplicationRecord
    has_many :events, primary_key: "bands_in_town_id", foreign_key: "artist_id"


    def test_search(name)
        artist_name = URI.encode(name)
        url = "https://rest.bandsintown.com/artists/#{artist_name}/?app_id=#{ENV['APP_ID']}"
        response = HTTP.get(url).to_s
        puts  response
    end
end

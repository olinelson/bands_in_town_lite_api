class Api::V1::ArtistsController < ApplicationController

    def index 
        # byebug
        artists = Artist.all
        json_string = Api::V1::ArtistSerializer.new(artists).serialized_json
        render json: json_string
    end

    def show
        @artist = Artist.find(params[:id])
        json_string = Api::V1::ArtistSerializer.new(@artist).serialized_json
        render json: json_string
    end

    def create
        @artist = Artist.new(artist_params)
    end

    def artist_params
        params.permit(bands_in_town_id:, name:, url:, image_url:, thumb_url:, facebook_page_url:, mbid:, tracker_count:, upcoming_event_count:)
    end


end

class Api::V1::ArtistsController < ApplicationController
    require "http"
    require 'uri'

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
        byebug
        @artist = Artist.new(artist_params)
        @artist.bands_in_town_id = params[:id]
        byebug
        @artist.save
    end

    def artist_params
        params.permit( :name, :url, :image_url, :thumb_url, :facebook_page_url, :mbid, :tracker_count, :upcoming_event_count)
    end

    def search
        params.permit(:artist_name)
        artist_name = URI.encode(params[:artist_name])
        url = "https://rest.bandsintown.com/artists/#{artist_name}/?app_id=#{ENV['APP_ID']}"
        response = HTTP.get(url).to_s
        render json: response
    end


end

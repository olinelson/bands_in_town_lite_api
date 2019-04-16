class Api::V1::EventsController < ApplicationController
    require "http"
    require 'uri'

    def index
        @events = Event.all 
         json_string = Api::V1::EventSerializer.new(@events).serialized_json
        render json: json_string
    end

    def show
        @event = Event.find(params[:id])
        json_string = Api::V1::EventSerializer.new(@event).serialized_json
        render json: json_string
    end

    def search_api_by_artist_name
        byebug
        params.permit(:artist_name)
        artist_name = URI.encode(params[:artist_name])
        url = "https://rest.bandsintown.com/artists/#{artist_name}/events?app_id=#{ENV['APP_ID']}&date=upcoming"
        response = HTTP.get(url).to_s
        render json: response
    end
end

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

    def create
        @event = Event.new
            @event.bands_in_town_id = params[:id]
            @event.artist_id = params[:artist_id]
            @event.url = params[:url]
            @event.on_sale_datetime = params[:on_sale_datetime]
            @event.datetime = params[:datetime]
            @event.venue_country = params[:venue][:country]
            @event.venue_city = params[:venue][:city]
            @event.venue_latitude = params[:venue][:latitude]
            @event.venue_name = params[:venue][:name]
            @event.venue_region = params[:venue][:region]
            @event.venue_longitude = params[:venue][:longitude]
            @event.lineup = params[:lineup]
            @event.ticket_url = params[:offers][0][:url]
            @event.ticket_status = params[:offers][0][:status]
            
            @event.save
    end

    def search_api_by_artist_name
        params.permit(:artist_name)
        artist_name = URI.encode(params[:artist_name])
        url = "https://rest.bandsintown.com/artists/#{artist_name}/events?app_id=#{ENV['APP_ID']}&date=upcoming"
        response = HTTP.get(url).to_s
        render json: response
    end

    
end


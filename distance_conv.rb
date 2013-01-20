require 'sinatra'
require './convert'

# enable :sessions

get '/' do
  # session[:distance_conv]
  erb :index
end

post '/to_km' do
  @now_km = MilesToKm.new(params[:miles]).miles_to_km
  # @now_km = @m.miles_to_km
  erb :to_km
end

post '/to_miles' do
  @now_miles = KmToMiles.new(params[:kilometers]).km_to_miles
  # @now_miles = @km.km_to_miles
  erb :to_miles
end
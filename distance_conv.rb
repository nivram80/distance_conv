require 'sinatra'
require './convert'

# enable :sessions

get '/' do
  # session[:distance_conv]
  erb :index
end

post '/to_km' do
  @m = MilesToKm.new(params[:miles])
  @now_km = @m.miles_to_km
  erb :to_km
end

post '/to_miles' do
  @km = KmToMiles.new(params[:kilometers])
  @now_miles = @km.km_to_miles
  erb :to_miles
end
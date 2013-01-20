require 'sinatra'
require './convert'

# show the homepage
get '/' do
  erb :index
end

# convert miles to kilometers page
post '/to_km' do
  @m = MilesToKm.new(params[:miles])
  @now_km = @m.miles_to_km
  erb :to_km
end

# convert kilometers to miles page
post '/to_miles' do
  @km = KmToMiles.new(params[:kilometers])
  @now_miles = @km.km_to_miles
  erb :to_miles
end
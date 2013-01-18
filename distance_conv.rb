require 'sinatra'

class MilesToKm
  attr_accessor :miles_to_km

  def initialize(miles)
    @miles = miles
  end

  def miles_to_km
    @miles * 1.609344
  end
end

class KmToMiles
  attr_accessor :km_to_miles

  def initialize(kilometers)
    @kilometers = kilometers
  end

  def km_to_miles
    @kilometers * 0.621371
  end
end

get '/' do
  erb :index
end

post '/to_km' do
  @conv_data = MilesToKm.new(params[:miles])
  erb :to_km
end

post '/to_miles' do
  @conv_data = KmToMiles.new(params[:kilometers])
  erb :to_miles
end
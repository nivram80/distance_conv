class MilesToKm
  attr_accessor :miles_to_km

  def initialize(miles)
    @miles = miles.to_f
  end

  def miles_to_km
    @miles * 1.609344
  end
end

class KmToMiles
  attr_accessor :km_to_miles

  def initialize(kilometers)
    @kilometers = kilometers.to_f
  end

  def km_to_miles
    @kilometers * 0.621371
  end
end
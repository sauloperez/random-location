module RandomLocation
  extend self

  METERS_IN_DEGREE = 111_300

  #
  # returns a random location near by the one provided
  # @param  lat [Float] latitude
  # @param  lng [Float] longitude
  # @param  r [Integer] radius in meters
  #
  # @return [Array] array containing latitude and longitude of the new location
  def near_by(lat, lng, r)
    u = rand
    v = rand

    # Convert radius from meters to degrees
    radius = r.to_f / METERS_IN_DEGREE

    w = radius * Math.sqrt(u)
    t = 2 * Math::PI * v

    x = (w * Math.cos(t)) / Math.cos(lat)
    y = w * Math.sin(t)

    [y + lat, x + lng]
  end
end

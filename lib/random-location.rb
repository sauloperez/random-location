module RandomLocation
  extend self

  METERS_IN_DEGREE = 111_300

  def nearby(lat, lng, r)
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

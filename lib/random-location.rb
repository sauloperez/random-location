module RandomLocation
  extend self

  METERS_IN_DEGREE = 111_300

  def nearby(lat, lng, r)
    u = rand
    v = rand

    # puts "u = #{u}, v = #{v}"

    # Convert radius from meters to degrees
    radius = r.to_f / METERS_IN_DEGREE

    # puts "#{r} / #{METERS_IN_DEGREE} = #{radius}"

    w = radius * Math.sqrt(u)
    t = 2 * Math::PI * v

    # puts "w = #{w}, t = #{t}"

    x = (w * Math.cos(t)) / Math.cos(lat)
    y = w * Math.sin(t)

    # puts "x = #{x}, y = #{y}"

    [y + lat, x + lng]
  end
end

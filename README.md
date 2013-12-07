Random location
===============

Description
-----------

Random location is simple tool to generate geographic coordinates randomly chosen near by the location and within the radius specified. It aims to provide a way to generate dummy data for geographical apps.

NOTE that all results are approximate values since problems derived from the shape of the earth have not been taken into consideration.


Installation
------------

Add this line to your application's Gemfile:

    gem 'random-location'

And then execute:

    $ bundle

Or install it like any other Ruby gem:

    gem install random-location

Usage
-----
Once installed, require it:

    require 'random-location'

Then, use its method specifying the coordinates of the reference point and the radius in meters

    RandomLocation.near_by(41.38506, 2.17340, 10000)

It also comes with a CLI that can be used as follows:

    $ random-location 41.38506 2.17340 10000
    latitude = 41.41814, longitude = 2.24560


Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request



require 'beer_client'


  ###
  ###
#  {"id"=>"YXDiJk",
# "name"=>"#FREEDOM Craft Brewery",
# "name_short_display"=>"#FREEDOM Craft",
# "description"=>
#  "#FREEDOM started as a joint venture of Barry Hansen Jr, Greg Cristallo, Angus Sinclair, David Hitchings, Eric Phillips and Harris Decker. The company now consists of eight partners and has recently moved into a new facility to begin production.\n\nEstablished in 2012, #FREEDOM Craft Brewery (pronounced \"Hashtag Freedom\") features modern beers brewed using traditional methods. Our brews are all natural and our flagship beer is created entirely of American grown ingredients.",
# "website"=>"http://freedombrew.us",
# "established"=>"2012",
# "is_organic"=>"N",
# "images"=>
#  {"icon"=>
#    "https://s3.amazonaws.com/brewerydbapi/brewery/YXDiJk/upload_eAMR3T-icon.png",
#   "medium"=>
#    "https://s3.amazonaws.com/brewerydbapi/brewery/YXDiJk/upload_eAMR3T-medium.png",
#   "large"=>
#    "https://s3.amazonaws.com/brewerydbapi/brewery/YXDiJk/upload_eAMR3T-large.png",
#   "square_medium"=>
#    "https://s3.amazonaws.com/brewerydbapi/brewery/YXDiJk/upload_eAMR3T-squareMedium.png",
#   "square_large"=>
#    "https://s3.amazonaws.com/brewerydbapi/brewery/YXDiJk/upload_eAMR3T-squareLarge.png"},
# "status"=>"verified",
# "status_display"=>"Verified",
# "create_date"=>"2013-08-23 14:59:43",
# "update_date"=>"2015-12-22 15:46:53",
# "locations"=>
#  [{"id"=>"Af10Nt",
#    "name"=>"Main Brewery",
#    "street_address"=>"3199 Albany Post Road",
#    "locality"=>"Buchanan",
#    "region"=>"New York",
#    "postal_code"=>"10511",
#    "phone"=>"(914) 979-2337",
#    "website"=>"http://freedombrew.us",
#    "latitude"=>41.2645348,
#    "longitude"=>-73.9356068,
#    "is_primary"=>"Y",
#    "in_planning"=>"N",
#    "is_closed"=>"Y",
#    "open_to_public"=>"N",
#    "location_type"=>"micro",
#    "location_type_display"=>"Micro Brewery",
#    "country_iso_code"=>"US",
#    "status"=>"verified",
#    "status_display"=>"Verified",
#    "create_date"=>"2013-08-23 15:04:16",
#    "update_date"=>"2016-04-04 19:41:35",
#    "country"=>
#     {"iso_code"=>"US",
#      "name"=>"UNITED STATES",
#      "display_name"=>"United States",
#      "iso_three"=>"USA",
#      "number_code"=>840,
#      "create_date"=>"2012-01-03 02:41:33"}}]}
namespace :seeding do
  desc "wtf"
  task :breweries => :environment do
    client = BeerClient.new
    breweries = client.all_verified_breweries
    breweries.each do |brewery|
      new_brewery = Brewery.new(name:          brewery.name,
                     api_id:         brewery.id,
                     website:        brewery.website,
                     established:    brewery.established,
                     street_address: brewery.locations.first["street_address"],
                     locality:       brewery.locations.first["locality"],
                     region:         brewery.locations.first["region"],
                     latitude:       brewery.locations.first["latitude"],
                     longitude:      brewery.locations.first["longitude"],
                     postal_code:    brewery.locations.first["postal_code"],
                     phone:          brewery.locations.first["phone"]
                     )
      if new_brewery.valid?
        beers = client.breweries_beers(new_brewery.api_id)
        beers.each do |beer|

        end
        binding.pry
      end
    end
  end
end

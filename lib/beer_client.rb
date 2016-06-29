class BeerClient

  def all_verified_breweries
    breweries = client.breweries.all(withLocations: "Y", status: "verified")
    container = []
    breweries.each do |brewery|
      if brewery.locations && brewery.locations.first["country"]["iso_code"] == "US"
        container << brewery
      end
    end
    container
  end

  def breweries_beers(brewery_id)
    beers = client.brewery(brewery_id).beers
  end

  def breweries_with_locations
    binding.pry
    response = Faraday.get "http://api.brewerydb.com/v2/breweries?key=c682be4ef9381532d5d9603138f6f598", { withLocation: "Y"}
  end

#  def client
#    @client ||= BreweryDB::Client.new do |config|
#      config.api_key = 'c682be4ef9381532d5d9603138f6f598'
#    end
#  end
  #
end

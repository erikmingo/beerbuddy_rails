class BeerClient

  def all_verified_breweries
    breweries = client.breweries.all(withLocations: "Y", status: "verified")
    container = []
    breweries.each do |brewery|
      #binding.pry
      if brewery.locations && brewery.locations.first["country"]["iso_code"] == "US"
        container << brewery
      end
    end
    container
  end

  def client
    @client ||= BreweryDB::Client.new do |config|
      config.api_key = 'c682be4ef9381532d5d9603138f6f598'
    end
  end

end

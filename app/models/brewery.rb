class Brewery < ActiveRecord::Base
  validates :api_id,
            :website,
            :street_address,
            :locality,
            :region,
            :latitude,
            :longitude,
            :postal_code,
            presence: true
end

class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|

      t.string :name
      t.string :api_id
      t.string :street_address
      t.string :locality
      t.string :region
      t.string :postal_code
      t.string :phone
      t.string :website
      t.string :established
      t.float :latitude
      t.float :longitude
      t.timestamps null: false
    end
  end
end

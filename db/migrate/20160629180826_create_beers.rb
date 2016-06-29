class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :api_id
      t.text :description
      t.string :style
      t.string :abv
      t.string :ibu


      t.timestamps null: false
    end
  end
end



# [{"id"=>"iZZRvV",
#    "name"=>"A Toast",
#    "name_display"=>"A Toast",
#    "style_id"=>37,
#    "is_organic"=>"N",
#    "labels"=>
#     {"icon"=>"https://s3.amazonaws.com/brewerydbapi/beer/iZZRvV/upload_Kzavzr-icon.png", "medium"=>"https://s3.amazonaws.com/brewerydbapi/beer/iZZRvV/upload_Kzavzr-medium.png", "large"=>"https://s3.amazonaws.com/brewerydbapi/beer/iZZRvV/upload_Kzavzr-large.png"},
#    "status"=>"verified",
#    "status_display"=>"Verified",
#    "create_date"=>"2013-11-25 13:46:51",
#    "update_date"=>"2015-12-17 07:46:54",
#
#
#
#    "style"=>
#
#
#
#
#     {"id"=>37,
#      "category_id"=>3,
#      "category"=>{"id"=>3, "name"=>"North American Origin Ales", "create_date"=>"2012-03-21 20:06:45"},
#      "name"=>"American-Style Brown Ale",
#      "short_name"=>"American Brown",
#
#
#      "description"=>
#       "American brown ales range from deep copper to brown in color. Roasted malt caramel-like and chocolate-like characters should be of medium intensity in both flavor and aroma. American brown ales have evident low to medium hop flavor and aroma, medium to high hop bitterness, and a medium body. Estery and fruity-ester characters should be subdued. Diacetyl should not be perceived. Chill haze is allowable at cold temperatures.",
#      "ibu_min"=>"25",
#      "ibu_max"=>"45",
#      "abv_min"=>"4",
#      "abv_max"=>"6.4",
#      "srm_min"=>"15",
#      "srm_max"=>"26",
#      "og_min"=>"1.04",
#      "fg_min"=>"1.01",
#      "fg_max"=>"1.018",
#      "create_date"=>"2012-03-21 20:06:46",
#      "update_date"=>"2015-04-07 15:27:35"}}

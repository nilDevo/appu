class AlterProductTable < ActiveRecord::Migration
  def up
  	add_column("products", "ad_title", :string)
  	add_column("products", "rent_type", :string)
  	add_column("products", "prise", :string)
  	add_column("products", "area", :string)
  	add_column("products", "owner_type", :string)
  	add_column("products", "condition", :string)
  	add_column("products", "extra", :string)
  	add_column("products", "image_name", :string)
  end

  def down
  	remove_column("products","ad_title")
  	remove_column("products","rent_type")
  	remove_column("products","prise")
  	remove_column("products","area")
  	remove_column("products","owner_type")
  	remove_column("products","condition")
  	remove_column("products","extra")
  	remove_column("products","image_name")
  end
end

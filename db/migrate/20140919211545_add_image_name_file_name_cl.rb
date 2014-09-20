class AddImageNameFileNameCl < ActiveRecord::Migration
  def up
  	remove_column :products, :image_name
  	add_column :products, :image_name_file_name, :string
  end
  def down
  	add_column :products, :image_name, :string
  	remove_column :products, :image_name_file_name
  end
end

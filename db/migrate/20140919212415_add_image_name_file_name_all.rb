class AddImageNameFileNameAll < ActiveRecord::Migration
  def up
  		add_column :products, :image_name_file_size, :integer
  		add_column :products, :image_name_content_type, :string
  		add_column :products, :image_name_updated_at, :datetime
  end
  def down
  		remove_column :products, :image_name_file_size
  		remove_column :products, :image_name_content_type
  		remove_column :products, :image_name_updated_at
  end
end

class AddUserIdToProducts < ActiveRecord::Migration
  disable_ddl_transaction!

  def up
    add_column :products, :user_id, :integer
  end

  def down
    remove_column :products, :user_id
  end
end

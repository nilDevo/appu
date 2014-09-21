class AlterUserTable < ActiveRecord::Migration
  def up
  	add_column "users" , "first_name" ,:string
  	add_column "users" , "last_name" ,:string
  	add_column "users" , "user_name" ,:string
  	add_column "users" , "email" ,:string
  end
  def down
  	remove_column "users" , "email" 
  	remove_column "users" , "user_name"
  	remove_column "users" , "last_name"
  	remove_column "users" , "first_name"
  end
end

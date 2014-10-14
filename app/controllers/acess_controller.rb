class AcessController < ApplicationController
  
	before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  

  def index
  end

  def login
  end

  def new
    @user = User.new
  end

  def create
    
  end

  def show
    @product = Product.find(params[:id])
  end


  def attempt_login
  	
  end

  def logout
  	session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "Logged out"
    redirect_to(:controller =>'homes', :action => 'index')
  end





 

  
end

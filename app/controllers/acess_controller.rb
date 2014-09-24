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
  	if params[:username].present? && params[:password].present?
      found_user = User.where(:user_name => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      # mark user as logged in
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.user_name
      flash[:notice] = "You are now logged in."
      redirect_to(:action => 'index')
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:controller =>'homes', :action => 'index')
    end
  end

  def logout
  	session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "Logged out"
    redirect_to(:controller =>'homes', :action => 'index')
  end





 

  
end

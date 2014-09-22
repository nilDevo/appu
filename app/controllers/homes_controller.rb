class HomesController < ApplicationController
 # before_action :set_home, only: [:show, :edit, :update, :destroy]

  # GET /homes
  # GET /homes.json
 
  def index
    @homes = Home.all
    @products = Product.all
    @productcount = Product.count
    @search
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
    @product = Product.find(params[:id])
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
     @product = Product.find(params[:id])
  end

  # POST /homes
  # POST /homes.json
  def create
    @home = Home.new(home_params)

    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
     @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:notice] = "Ad updated successfully."
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
       params.require(:product).permit(:ad_title, :rent_type, :prise, :area, :owner_type, :condition, :extra, :image_name)
    end
end

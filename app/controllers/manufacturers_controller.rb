class ManufacturersController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      flash[:notice] = "Manufacturer saved!"
      redirect_to @manufacturer
    else
      flash[:notice] = "Manufacturer not saved! See below for errors"
      render :new
    end
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def index
    @manufacturers = Manufacturer.all
  end

  protected

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end

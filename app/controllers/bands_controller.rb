class BandsController < ApplicationController
  def new
    @band = Band.new
  end

  def create
    @band = Band.new(params[:band])

    if @band.save
      redirect_to band_url(@band)
    else
      render :new
    end
  end

  def show
    @band = Band.find(params[:id])
  end

  def index
    @bands = Band.all
  end
end
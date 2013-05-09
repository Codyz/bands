class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params[:artist])

    if @artist.save
      redirect_to artist_url(@artist)
    else
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end
end
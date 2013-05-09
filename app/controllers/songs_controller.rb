class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])
  end

  def show
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    if @song.update_attributes(params[:song])
      redirect_to song_url(@song)
    else
      render :edit
    end
  end
end
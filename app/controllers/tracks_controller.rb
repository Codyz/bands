class TracksController < ApplicationController
  def new
    @track = Track.new
  end

  def create
    @track = Track.new(params[:track])


    if @track.save
      redirect_to track_url(@track)
    else
      render :new
    end
  end

  def show
    @track = Track.find(params[:id])
  end

  def index
    @tracks = Track.all
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])

    if @track.update_attributes(params[:track])
      redirect_to track_url(@track)
    else
      render :edit
    end
  end


end
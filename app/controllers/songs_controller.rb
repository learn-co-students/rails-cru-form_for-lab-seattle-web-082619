class SongsController < ApplicationController
  
  def new
    @song = Song.new 
  end 

  def index
    @songs = Song.all
  end 

  def create
    #if your strong params are statisfied, or in other words if you are expecting the proper input
    #then save and redirect, if not redirect. 
    @song = Song.create(song_params)
      if @song.valid?
        @song.save 
        redirect_to song_path(@song)
      else
        redirect_to song_path(@song)
      end
  end

  def show
    @song = id_params
    @genre = @song.genre
    @artist = @song.artist

  end 
  
  def edit
    @song = id_params 
  end 

  def update
    @song = id_params
    @song.update(song_params)
    redirect_to song_path(@song)
  end 

  private 

  def song_params
    params.require(:song).permit(:name)
  end

  def id_params
    Song.find(params[:id])
  end 

end

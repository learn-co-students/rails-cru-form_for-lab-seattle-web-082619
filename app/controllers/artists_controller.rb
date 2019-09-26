class ArtistsController < ApplicationController
  def new 
    @artist = Artist.new
  end 

  def index 
    @artists = Artist.all 
  end 

  def create 
    # if your input is accepted by the strong params, then you can save, if not redirect to index page 
    @artist = Artist.create(artist_params)
      if @artist.valid? 
        @artist.save
        redirect_to artist_path(@artist)
      else
        redirect_to artist_path
      end
  end 

  def show
    @artist = artist_id_params
  end 

  def edit 
    @artist = artist_id_params
  end 

  def update
    @artist = artist_id_params
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end 


  private 

  def artist_params
    params.require(:artist).permit(:name,:bio)
  end 

  def artist_id_params
    Artist.find(params[:id])
  end 

end

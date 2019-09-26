class GenresController < ApplicationController
  def new
    @genre = Genre.new 
  end 

  def index 
    @genres = Genre.all 
  end 
  
  def create 
    #add in strong params logic so that if its valid, save to the data base,and redirect pathing
    # if not, redirect pathing to index for example (could be anywhere)
    @genre = Genre.create(genre_params)
      if @genre.valid? 
        @genre.save
        redirect_to genre_path(@genre)
      else
        redirect_to genre_path(@genre)
      end
  end 

  def show
    @genre = genre_id_params
  end 

  def edit 
    @genre = genre_id_params
  end 

  def update
    @genre = genre_id_params
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end 

  
  private 

  def genre_params
    params.require(:genre).permit(:name)
  end 

  def genre_id_params 
    Genre.find(params[:id])
  end 

end

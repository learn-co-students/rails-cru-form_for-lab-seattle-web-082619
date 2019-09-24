class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(allow_attributes)
    @song.save

    redirect_to song_path(@song)
  end

  def show
    @genre = @song.genre
    @artist = @song.artist
  end

  def edit
  end

  def update
    @song = Song.update(allow_attributes)

    redirect_to song_path(@song)
  end

  private

  def allow_attributes
    params.require(:song).permit!
  end

  def set_song
    @song = Song.find(params[:id])
  end

end

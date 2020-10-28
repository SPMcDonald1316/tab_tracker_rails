class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render 'index.json.jb'
  end

  def show
    @song = Song.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @song = Song.new(
      title: params[:title],
      artist: params[:artist],
      genre: params[:genre],
      album: params[:album],
      album_image: params[:album_image],
      youtube_id: params[:youtube_id],
      lyrics: params[:lyrics],
      tab: params[:tab]
    )
    if @song.save
      render 'show.json.jb'
    else
      render json: {errors: @song.errors.full_messages}
    end
  end
end

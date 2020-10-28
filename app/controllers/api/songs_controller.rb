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

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title] || @song.title
    @song.artist = params[:artist] || @song.artist
    @song.genre = params[:genre] || @song.genre
    @song.album = params[:album] || @song.album
    @song.album_image = params[:album_image] || @song.album_image
    @song.youtube_id = params[:youtube_id] || @song.youtube_id
    @song.lyrics = params[:lyrics] || @song.lyrics
    @song.tab = params[:tab] || @song.tab

    if @song.save
      render 'show.json.jb'
    else
      render json: {errors: @song.errors.full_messages}
    end
  end

  def destroy
    @song = Song.find_by(id: params[:id])
    @song.destroy
    render 'destroy.json.jb'
  end
end

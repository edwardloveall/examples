class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song_form = SongForm.new(Song.new())
  end

  def create
    song = Song.new
    notes = params[:song][:notes_attributes].size.times do |i|
      song.notes.build
    end
    @song_form = SongForm.new(song)
    if @song_form.validate(params[:song])
      @song_form.save
      redirect_to songs_path
    else
      render :new
    end
  end
end

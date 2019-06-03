class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.songs.count
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    self.songs.map { |song| song.artist.name }
  end
end
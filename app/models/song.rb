class Song < ApplicationRecord
  validates :title, :artist, :genre, :album, :album_image, :youtube_id, :lyrics, :tab, presence: true
end

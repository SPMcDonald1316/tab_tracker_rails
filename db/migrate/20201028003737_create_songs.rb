class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.string :album
      t.string :album_image
      t.string :youtube_id
      t.text :lyrics
      t.text :tab

      t.timestamps
    end
  end
end

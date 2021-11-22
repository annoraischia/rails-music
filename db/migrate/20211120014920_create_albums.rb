class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.string :type
      t.boolean :year
      t.string :genre
      t.time :length
      t.string :cover_art_url
      t.boolean :released
      t.datetime :released_at

      t.timestamps
    end
  end
end

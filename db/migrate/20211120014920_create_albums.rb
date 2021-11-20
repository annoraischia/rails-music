class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.boolean :released
      t.datetime :released_at
      t.time :length
      t.string :cover_art_url
      t.string :kind

      t.timestamps
    end
  end
end

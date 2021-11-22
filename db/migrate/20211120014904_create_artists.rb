class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :avatar_url
      t.string :cover_photo_url
      t.string :genre
      t.datetime :formed_at
      t.boolean :verified
      t.datetime :verified_at
      
      t.timestamps
    end
  end
end

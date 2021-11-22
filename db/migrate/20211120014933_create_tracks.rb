class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :url
      t.string :title
      t.time :length
      t.string :artist
      t.string :album
      t.boolean :available
      
      t.timestamps
    end
  end
end

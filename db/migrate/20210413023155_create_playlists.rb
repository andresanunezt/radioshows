class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do | t | 
      t.string :title
      t.integer :dj_id
      t.text :content
      t.string :show_type
      t.string :genre
      t.datetime :air_time
      t.timestamp
    end
  end
end

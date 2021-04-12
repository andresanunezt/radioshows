class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do | t |
      t.string :name
      t.datetime :time
      t.integer :radio_station_id
      t.string :host
      t.string :show_type
    end
  end
end

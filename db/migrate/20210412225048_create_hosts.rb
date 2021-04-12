class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do | t |
      t.string :name
      t.integer :radio_station_id      
      t.show_ids :show_ids
    end
  end
end

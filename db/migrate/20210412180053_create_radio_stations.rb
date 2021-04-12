class CreateRadioStations < ActiveRecord::Migration[5.2]
  def change
    create_table :radio_stations do | t |
      t.string :username
      t.string :password_digest
    end
  end
end

class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :bands_in_town_id
      t.string :artist_id
      t.string :url
      t.string :on_sale_datetime
      t.string :datetime
      t.string :description
      t.string :venue_country
      t.string :venue_city
      t.string :venue_latitude
      t.string :venue_name
      t.string :venue_region
      t.string :venue_longitude
      t.string :lineup
      t.string :tiket_url
      t.string :ticket_status

      t.timestamps
    end
  end
end

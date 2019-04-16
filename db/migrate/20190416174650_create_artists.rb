class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :bands_in_town_id
      t.string :name
      t.string :url
      t.string :image_url
      t.string :thumb_url
      t.string :facebook_page_url
      t.string :mbid
      t.integer :tracker_count
      t.integer :upcoming_event_count

      t.timestamps
    end
  end
end

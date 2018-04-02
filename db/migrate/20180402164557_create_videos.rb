class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :youtube_id
      t.string :artist_name
      t.string :music_name

      t.timestamps
    end
  end
end

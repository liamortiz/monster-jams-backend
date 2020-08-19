class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :band_name
      t.integer :user_id
      t.string 'monsters', array: true, default: []
      t.integer 'pattern', array: true, default: []
      t.string 'sounds', array: true, default: []
      t.timestamps
    end
  end
end

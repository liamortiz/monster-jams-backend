class CreateSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :sounds do |t|
      t.integer :playlist_id
      t.timestamps
    end
  end
end

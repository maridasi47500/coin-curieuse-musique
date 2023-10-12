class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :link
      t.integer :tone_id

      t.timestamps
    end
  end
end

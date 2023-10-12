class CreateMusicstuffs < ActiveRecord::Migration[7.0]
  def change
    create_table :musicstuffs do |t|
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end

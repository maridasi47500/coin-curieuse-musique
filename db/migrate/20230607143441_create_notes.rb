class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :intervals do |t|
      t.integer :notea_id
      t.integer :noteb_id
    end
    create_table :demitonmajeurs do |t|
      t.integer :note_id
      t.integer :interval_id
    end
    create_table :demitonmineurs do |t|
      t.integer :note_id
      t.integer :interval_id
    end
    create_table :notes do |t|
      t.string :name

      t.timestamps
    end
  end
end

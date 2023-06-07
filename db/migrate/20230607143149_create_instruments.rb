class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :pieceinstruments do |t|
      t.integer :instrument_id
      t.integer :piece_id
    end
    create_table :instruments do |t|
      t.string :name
      t.string :familier

      t.timestamps
    end
  end
end

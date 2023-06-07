class CreatePieces < ActiveRecord::Migration[7.0]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :composer
      t.string :numero

      t.timestamps
    end
  end
end

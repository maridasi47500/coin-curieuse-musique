class CreateDanses < ActiveRecord::Migration[7.0]
  def change
    create_table :hasmanydanses do |t|
      t.integer :piece_id
      t.integer :danse_id
      t.integer :mylayout
    end
    create_table :danses do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

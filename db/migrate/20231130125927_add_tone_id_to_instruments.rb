class AddToneIdToInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :tone_id, :integer
  end
end

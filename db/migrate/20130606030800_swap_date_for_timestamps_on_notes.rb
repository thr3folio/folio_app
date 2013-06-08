class SwapDateForTimestampsOnNotes < ActiveRecord::Migration
  def up
    change_table :notes do |t|
      t.timestamps
      t.remove :date
    end
  end

  def down
    change_table :notes do |t|
      t.remove :created_at
      t.remove :updated_at
      t.string :date
    end
  end
end

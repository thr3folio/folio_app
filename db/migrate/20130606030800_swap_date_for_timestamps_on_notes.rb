class SwapDateForTimestampsOnNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :date
    add_column(:notes, :created_at, :datetime)
    add_column(:notes, :updated_at, :datetime)
    end
end

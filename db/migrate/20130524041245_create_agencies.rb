class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :location
      t.string :industry

      t.timestamps
    end
  end
end

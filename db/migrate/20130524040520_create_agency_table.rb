class CreateAgencyTable < ActiveRecord::Migration
  def up
    create_table :agency do |t|
      t.string :name
      t.string :location
      t.string :industry
      t.timestamps
    end
  end

  def down
  end
end

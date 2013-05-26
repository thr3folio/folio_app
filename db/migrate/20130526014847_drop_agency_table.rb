class DropAgencyTable < ActiveRecord::Migration
  def up
    drop_table :agency
  end
  def down

  end
end

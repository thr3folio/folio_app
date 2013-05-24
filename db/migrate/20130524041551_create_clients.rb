class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :location
      t.string :industry

      t.timestamps
    end
  end
end

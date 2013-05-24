class CreateAgencyClients < ActiveRecord::Migration
  def change
    create_table :agency_clients do |t|
      t.integer :agency_id
      t.integer :client_id

      t.timestamps
    end
  end
end

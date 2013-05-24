class AddLocationAndIndustryColumnsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :location, :string
    add_column :companies, :industry, :string
  end
end

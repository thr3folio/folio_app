class RenameCompanyIdColumnToAgencyIdInRecruitersTable < ActiveRecord::Migration
  def change
    rename_column :recruiters, :company_id, :agency_id
  end
end

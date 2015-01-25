class RenamePatientColumns < ActiveRecord::Migration
  def change
    rename_column :patients, :age, :age_group_id
    rename_column :patients, :status, :asa_grade_id
    rename_column :patients, :reason, :reason_id
    rename_column :patients, :surgery, :surgery_id
  end
end

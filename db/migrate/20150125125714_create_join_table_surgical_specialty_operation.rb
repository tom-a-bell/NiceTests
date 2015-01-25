class CreateJoinTableSurgicalSpecialtyOperation < ActiveRecord::Migration
  def change
    create_join_table :surgical_specialties, :operations do |t|
      # t.index [:surgical_specialty_id, :operation_id]
      # t.index [:operation_id, :surgical_specialty_id]
    end
  end
end

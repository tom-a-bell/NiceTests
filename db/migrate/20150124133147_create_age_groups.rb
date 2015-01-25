class CreateAgeGroups < ActiveRecord::Migration
  def change
    create_table :age_groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

class CreatePatientsAndTests < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :age
      t.integer :status
      t.integer :reason
      t.integer :surgery
      t.integer :recommendation
      t.timestamps
    end

    create_table :tests do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    create_table :patients_tests, id: false do |t|
      t.belongs_to :patient
      t.belongs_to :test
    end
  end
end

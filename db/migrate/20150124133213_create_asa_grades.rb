class CreateAsaGrades < ActiveRecord::Migration
  def change
    create_table :asa_grades do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

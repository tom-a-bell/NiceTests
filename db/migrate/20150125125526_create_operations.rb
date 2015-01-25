class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :name
      t.text :description
      t.belongs_to :surgery, index: true

      t.timestamps
    end
  end
end

class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

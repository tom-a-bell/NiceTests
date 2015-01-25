class CreateJoinTableOperationTest < ActiveRecord::Migration
  def change
    create_join_table :operations, :tests do |t|
      # t.index [:operation_id, :test_id]
      # t.index [:test_id, :operation_id]
    end
  end
end

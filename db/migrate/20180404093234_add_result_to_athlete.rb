class AddResultToAthlete < ActiveRecord::Migration[5.2]
  def change
    add_column :athletes, :result_id, :integer
    add_index :athletes, :result_id
  end
end

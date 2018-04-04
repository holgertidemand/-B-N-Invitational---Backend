class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :number_of_votes
      t.float :score
      t.integer :rating_collection, array: true
      t.timestamps
    end
  end
end

class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :judge_id
      t.integer :dog_id
      t.timestamps
    end
  end
end

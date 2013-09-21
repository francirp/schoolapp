class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.integer :points_to_redeem
      t.integer :adult_id
      t.integer :kid_id

      t.timestamps
    end
  end
end

class CreateAdults < ActiveRecord::Migration
  def change
    create_table :adults do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.integer :teacher_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :time
      t.string :subject
      t.integer :points
      t.boolean :completed
      t.datetime :due_date
      t.string :frequency
      t.integer :teacher_id
      t.integer :kid_id

      t.timestamps
    end
  end
end

class ChangeTeacherIdToAdultId < ActiveRecord::Migration
  def change
    remove_column :kids, :teacher_id
    add_column :kids, :adult_id, :integer
  end
end

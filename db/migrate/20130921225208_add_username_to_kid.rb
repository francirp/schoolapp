class AddUsernameToKid < ActiveRecord::Migration
  def change
    remove_column :kids, :first_name
    remove_column :kids, :last_name
    remove_column :kids, :email
  end
end

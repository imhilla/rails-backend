class RemoveUsersFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_reference :appointments, :user, foreign_key: true
  end
end

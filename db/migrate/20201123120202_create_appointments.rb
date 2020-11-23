class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :username
      t.string :model
      t.string :date
      t.string :city

      t.timestamps
    end
  end
end

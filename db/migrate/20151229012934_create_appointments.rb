class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.integer :technician_id
      t.integer :service_id
      t.boolean :booked

      t.timestamps null: false
    end
  end
end

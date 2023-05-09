class CreateFlightUser < ActiveRecord::Migration[5.2]
  def change
    create_table :flight_users do |t|
      t.integer :user_id
      t.integer :flight_id
    end
  end
end

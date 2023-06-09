class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :user_id
      t.integer :number
      t.text :origin
      t.text :destination
      t.text :date
      t.integer :plane_id

      t.timestamps
    end
  end
end

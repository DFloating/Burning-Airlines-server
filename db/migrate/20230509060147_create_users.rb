class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :flight_id
      t.text :user_name
      t.text :password
      t.boolean :admin

      t.timestamps
    end
  end
end

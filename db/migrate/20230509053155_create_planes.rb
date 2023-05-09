class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.text :plane_name
      t.integer :rows
      t.text :columns

      t.timestamps
    end
  end
end

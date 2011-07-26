class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.datetime :start_date
      t.datetime :end_date
      t.integer :person_id
      t.integer :planner_id

      t.timestamps
    end
  end
end

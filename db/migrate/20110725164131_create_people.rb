class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :tel
      t.string :gsm
      t.text :description
      t.integer :community_id
      t.integer :role_id
      t.boolean :community_manager
      t.boolean :member
      t.boolean :contact
      t.boolean :planner
      t.boolean :community_sponsor

      t.timestamps
    end
  end
end

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

      t.timestamps
    end
  end
end

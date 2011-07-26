class CreateTablePeopleRoles < ActiveRecord::Migration
  def change
    create_table :people_roles, :id => false do |t|
      t.integer :person_id
      t.integer :role_id
    end
  end
end

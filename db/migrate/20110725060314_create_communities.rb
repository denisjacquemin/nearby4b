class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.text :description
      t.datetime :deleted_at
      t.boolean :deleted

      t.timestamps
    end
  end
end

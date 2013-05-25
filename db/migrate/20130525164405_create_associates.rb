class CreateAssociates < ActiveRecord::Migration
  def change
    create_table :associates do |t|
      t.string :name
      t.string :email
      t.integer :group_id

      t.timestamps
    end
    add_index :associates, :group_id
  end
end

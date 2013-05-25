class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :position
      t.integer :client_id

      t.timestamps
    end
  end
end

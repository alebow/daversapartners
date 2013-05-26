class AddAssociateIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :associate_id, :integer
    add_index :searches, :associate_id
  end
end

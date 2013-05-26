class AddAdminToAssociates < ActiveRecord::Migration
  def change
    add_column :associates, :admin, :boolean, default: false
  end
end

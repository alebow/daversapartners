class AddBiosToAssociates < ActiveRecord::Migration
  def change
    add_column :associates, :bio, :string
  end
end

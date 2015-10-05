class SetDefault < ActiveRecord::Migration
  def up
    # Set default value
    change_column_default :users, :roleID, 1
  end
end

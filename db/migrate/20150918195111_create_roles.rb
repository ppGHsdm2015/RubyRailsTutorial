class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string 'rolename' 
      t.string 'edituser', :limit => '1', :default => 'n'
      t.string 'modifymasters', :limit => '1', :default => 'n'
      t.string 'allowmod', :limit => '1', :default => 'n'
      t.string 'allowanalysis', :limit => '1', :default => 'n'
      t.string 'allowupload', :limit => '1', :default => 'n'
    end
  end
end

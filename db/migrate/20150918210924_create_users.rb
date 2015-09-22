class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string 'username',	:limit => '25',	:null => false
      t.string 'password',	:limit => '15', :null => false
      t.string 'fullname',	:limit => '150', :null => false
      t.string 'email',	:limit => '150'	
      t.string 'affiliation',	:limit => '200'	
      t.integer 'roleID'
      t.string 'gender',  :limit => '1'
      t.integer 'age'
    end
  end
end

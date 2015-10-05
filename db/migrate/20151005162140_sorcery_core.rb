class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string 'fullname',	:limit => '150', :null => false
      t.string 'organisation',	:limit => '200'	
      t.integer 'roleID'
      t.string 'gender',  :limit => '1'
      t.integer 'age'
      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
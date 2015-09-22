class CreateArticlesworkflows < ActiveRecord::Migration
  def change
    create_table :articlesworkflows do |t|
      t.integer 'articleid', :null => false			
      t.integer 'workflowid', :null => false			
      t.integer 'implementor', :null => false		
      t.datetime 'implOn', :null => false
    end
  end
end

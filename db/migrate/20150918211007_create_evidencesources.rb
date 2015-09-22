class CreateEvidencesources < ActiveRecord::Migration
  def change
    create_table :evidencesources do |t|
      t.string 'title',	:limit => '200', :null => false	
      t.string 'author',	:limit => '200', :null => false	
      t.datetime 'year'			
      t.string 'source', :limit => '200'				
      t.datetime 'doi'		
      t.integer 'issueNo'			
      t.string 'volume',	:limit => '200'			
      t.string 'pageNo',	:limit => '200'			
      t.integer 'submitter',	:null => false	
      t.datetime 'submittedOn', :null => false	
    end
  end
end

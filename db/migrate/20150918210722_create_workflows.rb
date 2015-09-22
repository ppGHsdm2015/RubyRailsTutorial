class CreateWorkflows < ActiveRecord::Migration
  def change
    create_table :workflows do |t|
      t.string 'workflowname'
    end
  end
end

class CreateEvidenceitems < ActiveRecord::Migration
  def change
    create_table :evidenceitems do |t|
      t.string 'evtypename'
    end
  end
end

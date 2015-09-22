class CreateRschparticipants < ActiveRecord::Migration
  def change
    create_table :rschparticipants do |t|
      t.string 'partname'
    end
  end
end

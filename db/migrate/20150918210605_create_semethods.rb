class CreateSemethods < ActiveRecord::Migration
  def change
    create_table :semethods do |t|
      t.string 'semethodname'
    end
  end
end

class CreateSemethgies < ActiveRecord::Migration
  def change
    create_table :semethgies do |t|
      t.string 'semethgyname'
      t.string 'semethgydesc'
    end
  end
end

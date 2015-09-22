class CreateRschmethods < ActiveRecord::Migration
  def change
    create_table :rschmethods do |t|
      t.string 'methodname', :limit => '200'
    end
  end
end

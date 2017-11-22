class People < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |el|
      t.string :name
      t.integer :house_id
    end 
  end
end

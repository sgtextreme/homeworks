class Person < ActiveRecord::Migration[5.1]
  def change
    create_table :person do |el|
      t.confirmable 
      t.string :name 
      t.integer :house_id 
    end
  end
end

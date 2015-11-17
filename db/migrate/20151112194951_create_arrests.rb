class CreateArrests < ActiveRecord::Migration
  def change
    create_table :arrests do |t|
      t.integer :client_id
      t.string :arresting_officer
      t.string :offense

      t.timestamps
    end
  end
end

class CreateEmployees < ActiveRecord::Migration[5.1]
  def up
    create_table :employees do |t|
      t.integer "department_id"
      t.string "first_name", :limit => 50
      t.string "last_name", :limit => 50
      t.string "jod_tittle", :limit => 50
      t.string "email", :default => '', :null => false
      t.timestamps
    end
  end


  def down
    drop_table :employees
  end

end

class CreateDepartments < ActiveRecord::Migration[5.1]
  def up
    create_table :departments do |t|
      t.string "name", :limit => 50
      t.timestamps
    end
  end

  def down
    drop_table :departments
  end

end

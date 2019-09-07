class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
    	t.integer :role_id, nil: false, :index => true, :foreign_key => true
    	t.string :name, nil: false, :index => true
    	t.float :salary, nil: false, :default => 0, :index => true
    	t.float :rating, nil: false, :default => 0, :index => true
    	t.integer :reporting_employee_id, nil: true, index: true
      t.timestamps
    end
  end
end

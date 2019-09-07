class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
    	t.string :name
    	t.integer  :reporting_status, :default => 0
      t.timestamps
    end
  end
end

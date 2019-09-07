# Create all roles

Role.create(name: 'CEO', reporting_status: -1) # Record ID: 1
Role.create(name: 'VP', reporting_status: 1) # Record ID: 2
Role.create(name: 'Director', reporting_status: 1) # Record ID: 3
Role.create(name: 'Manager', reporting_status: 1) # Record ID: 4
Role.create(name: 'SDE', reporting_status: 0) # Record ID: 5


# Create Employees

# CEO
Employee.create(:name => "Harisha V", :salary => 100000, :rating => 3.5, :role_id => 1) # Record ID: 1

# VP
Employee.create(:name => "Mahesh Babu", :salary => 9000, :rating => 4.5, :role_id => 2, :reporting_employee_id => 1) # Record ID: 2

# Director
Employee.create(:name => "Suresh Reddy", :salary => 9500, :rating => 2.5, :role_id => 3, :reporting_employee_id => 2) # Record ID: 3

# Director
Employee.create(:name => "Nagaraj M", :salary => 6500, :rating => 4.0, :role_id => 3, :reporting_employee_id => 2) # Record ID: 4

# Manager
Employee.create(:name => "Jitendra", :salary => 8000, :rating => 3.5, :role_id => 4 , :reporting_employee_id => 3) # Record ID: 5

# SDE
Employee.create(:name => "Sidharth", :salary => 5000, :rating => 3.5, :role_id => 5, :reporting_employee_id => 5) # Record ID: 6
Employee.create(:name => "Raushan", :salary => 5200, :rating => 3.5, :role_id => 5, :reporting_employee_id => 5) # Record ID: 7
Employee.create(:name => "Bikramjith", :salary => 5100, :rating => 3.8, :role_id => 5, :reporting_employee_id => 5) # Record ID: 8

# Manager
Employee.create(:name => "Siva Prakash", :salary => 6000, :rating => 4.1, :role_id => 4, :reporting_employee_id => 4) # Record ID: 9

#SDE
Employee.create(:name => "Cedan", :salary => 5500, :rating => 2.5, :role_id => 5, :reporting_employee_id => 9) # Record ID: 10
Employee.create(:name => "Madupriya", :salary => 5900, :rating => 3.8, :role_id => 5, :reporting_employee_id => 9) # Record ID: 11
Employee.create(:name => "Sajith Ravi", :salary => 8800, :rating => 4.5, :role_id => 5, :reporting_employee_id => 9) # Record ID: 12

# Manager
Employee.create(:name => "Ashu", :salary => 9600, :rating => 3.5, :role_id => 4 , :reporting_employee_id => 3) # Record ID: 13

# SDE
Employee.create(:name => "SDE 1", :salary => 9000, :rating => 3.5, :role_id => 5, :reporting_employee_id => 12 ) # Record ID: 14
Employee.create(:name => "SDE 2", :salary => 7000, :rating => 3.5, :role_id => 5, :reporting_employee_id => 13) # Record ID: 15
Employee.create(:name => "SDE 3", :salary => 7500, :rating => 3.5, :role_id => 5, :reporting_employee_id => 13) # Record ID: 16

# Model: Employee
# Attributes: id, name, salary, rating, reporting_employee_id

class Employee < ApplicationRecord

	validates :name, :presence => true
	validates :salary, :presence => true
	validates :rating, :presence => true

 	belongs_to :role
 	has_many :reporting_employees, :class_name => "Employee", :foreign_key => :reporting_employee_id
  belongs_to :reporting_manager, :class_name => "Employee", :foreign_key => :reporting_employee_id, optional: true

  before_destroy :reassign_reporting_employees

  validate :validate_reporting_status


 	# Checking if the employee can be reporting manager
  def reporting_manager?
  	if self.role.reporting_status == -1 || self.role.reporting_status == 1
  		return true
  	else
  		return false
  	end
  end

  # Check if the employee can report to reporting manager
  def can_report?
  	if self.role.reporting_status != -1
  		return true
  	else
  		return false
  	end
  end

  # Validate for below conditions
  # 1. If the employee can be reporting manager
  # 2. If this employee has to report to another employe based on the role
  def validate_reporting_status
  	if self.role.reporting_status == -1
  		if self.reporting_employee_id
  		 	self.errors.add(:reporting_employee_id, "#{self.role.name} can not report to any employee")
  		end
  	elsif self.reporting_manager.role.reporting_status == 0
  		self.errors.add(:reporting_employee_id, "#{self.role.name} can not reporting manager")
  	end
  end


  # Function to check if there are any reporting employees and assign them to his reporting manager
  def reassign_reporting_employees

  end

end

class EmployeesController < ApplicationController

	before_action :set_employee, :only => [:update, :destroy, :show]

	def create
		employee = Employee.new(employee_params)
		if employee.save
			render json: { :message => "Employee has been created successfully", :employee => employee }
		else
			render json: { :message => "There was an error in creating employee, please try again.", :employee => employee.errors }
		end
	end

	def show

	end

	def index
		@employees = Employee.all
	end

	def update

	end


	# When employee gets deleted
	def destroy
		if @employee.destroy
			render json: { message: "The employee has been deleted successfully and reassgined all reporting employees to next reporting manager" }
		else
			render json { message: "There was an error in deleting employee, please try again." }
		end
	end

	private

		def employee_params
			params.require(:employee).permit(:name, :salary, :rating, :reporting_employee_id)
		end

		def set_employee
			@employee = Employee.find(params[:role][:id]) if params[:role][:id]
			unless @employee
				render json: { message: "There was an error in retrieving employee record, please check employee ID" }
			end
		end

end
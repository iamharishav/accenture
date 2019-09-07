class RolesController < ApplicationController

	def index
		render json: { message: " Roles list", :roles => Role.all }
	end

	def create
		role = Role.new(role_params)
		if role.save
			render json: { message: "Role has been created successfully", :role => role }
		else
			render json: { message: "There was an error in saving role, please try again.", :errors => role.errors }
		end
	end

	private

		def role_params
			params.require(:role).permit(:name, :reporting_status)
		end

end
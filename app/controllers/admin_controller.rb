class AdminController < ApplicationController

	def show
		@admin = Admin.find(params[:id])
	end


	def new
		@admin = Admin.new 
	end


	def create
		@admin = Admin.new(params[:admin])
		if @admin.save
			AdminMailer.signup_confirmation(@admin).deliver
			redirect_to @admin, notice: "Sign up successfully"
		else
			render 'new'
		end
	end
end

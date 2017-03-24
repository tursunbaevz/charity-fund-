class EmailsController < ApplicationController
	def show
		@email = Email.find(params[:id])
	end

	def new
		@email = Email.new
	end

	def create
		@email = Email.new(email_params)
		if @email.save
			EmailMailer.send_message(@email).deliver
			redirect_to @email, notice: "Thanks!"
		else
			render 'new'
		end
	end

	private

	def email_params
		params.require(:email).permit(:name, :email, :content)
	end
end

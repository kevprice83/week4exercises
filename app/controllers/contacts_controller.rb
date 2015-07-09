class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.valid?
			@contact.save
			redirect_to contacts_path
		else
			render :new
		end
	end

	def index
		@contacts = Contact.order(name: :asc)
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def destroy
		Contact.find(params[:id]).destroy
		redirect_to contacts_path
	end

	def favourite
		@contact = Contact.find(params[:id])
		if @contact.status
			@contact.update_attributes(status: false)
		else
			@contact.update_attributes(status: true)
		end
		render :show
	end

	def favourites
		@contacts = Contact.where(status: true)
		render :index
	end


	private

	def contact_params
		params.require(:contact).permit(:name, :address, :phone1, :phone2, :email1, :email2)
	end

end
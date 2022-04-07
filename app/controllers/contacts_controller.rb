class ContactsController < ApplicationController
  def new
    @contact = Contact.new()
  end

  def create
    @contact = Contact.new(contact_params)
      if @contact.deliver
        render json: {message: "Email sent successfully"}
      else
        if @contact.name.nil?
          redirect_to new_contact_path, alert: "Il manque ton nom !"
        elsif @contact.email.nil?
          redirect_to new_contact_path, alert:"Ton mail n'a pas pu être envoyé, il manque ton email !"
        end
      end

  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end

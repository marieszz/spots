class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "spoots.app@gmail.com", subject: "Contacte Spoots"
  end
end

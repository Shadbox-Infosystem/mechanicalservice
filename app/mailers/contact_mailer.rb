class ContactMailer < ApplicationMailer
  def new_contact(contact)
    @contact = contact
    mail(
      to: 'info@mechanicaltransmissionsolution.com',
      subject: "New Contact Form Submission from #{@contact.name}",
      reply_to: @contact.email
    )
  end
end

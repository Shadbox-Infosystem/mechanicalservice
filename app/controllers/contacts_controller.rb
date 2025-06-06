# frozen_string_literal: true

class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      # You can add mailer functionality here later
      flash[:notice] = "Thank you for your message. We'll get back to you soon!"
      redirect_to root_path
    else
      flash.now[:alert] = 'There was an error sending your message. Please try again.'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end

class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
    if Contact.new(params[:contact]).deliver
      flash.now[:success] = "Message sent succesfully! Our representatives will respond to you shortly."
      redirect_to new_contact_path
    end
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      @contact.deliver
      flash.now[:success] = 'Thank you for your message. We will contact you soon! You will be redirected to the home page in 3 seconds.'
    else
      flash.now[:danger] = 'Cannot send message.'
      render :new 
    end
  end
end
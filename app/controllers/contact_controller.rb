class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      flash[:success] = "Gracias por contactarse con nosotros, le responderemos a la brevedad"
      redirect_to(root_path)
    else
      flash.now[:error] = 'Por favor completar todos los campos'
      render :new
    end
  end

end
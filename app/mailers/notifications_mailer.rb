class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@argtrack.com"
  default :to => "rmatteoda@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[TrackTambo-contacto] desde pagina web")
  end
end

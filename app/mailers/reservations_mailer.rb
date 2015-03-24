class ReservationsMailer < ApplicationMailer

  def send_reservation_confirmation(reservation)
    puts "++++++++++++++IN SEND+++++++++++++++++++++"
    @reservation = reservation 
    mail(to:reservation.email, subject: "Your reservation")
    puts "Mail sent to" + reservation.email.to_s
      

  end

end

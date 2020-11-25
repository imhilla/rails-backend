module AppointmentsHelper
  def appointment_params
    params.require(:appointment).permit(:username, :model, :date, :city, :user_id)
  end
end
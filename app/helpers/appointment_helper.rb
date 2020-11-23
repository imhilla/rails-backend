module AppointmentsHelper
  def appointment_params
    params.require(:appointment).permit(:username, :model, :data, :city)
  end
end

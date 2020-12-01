class AppointmentsController < ApplicationController
  include AppointmentsHelper

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
    @appointment = Appointment.create!(
      username: params['appointment']['username'],
      model: params['appointment']['model'],
      date: params['appointment']['date'],
      city: params['appointment']['city'],
      user_id: params['appointment']['userId']
    )
    render json: @appointment
  end
end

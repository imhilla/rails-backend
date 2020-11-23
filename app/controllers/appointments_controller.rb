class AppointmentsController < ApplicationController
  include AppointmentsHelper

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create 
    @appointment = Appointment.new(appointment_params)
    @appointment.save
  end
end

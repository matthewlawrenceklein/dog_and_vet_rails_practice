class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
    end

    def create
        # @appointment = Appointment.create(vet_id: params[:appointment][:vet_id], dog_id: params[:appointment][:dog_id])
        @appointment = Appointment.create(appointment_params)
        redirect_to appointment_path(@appointment)
    end


    private

    def appointment_params
        params.require(:appointment).permit(:dog_id, :vet_id)
    end

end


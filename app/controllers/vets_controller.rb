class VetsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def show
        @vet = Vet.find(params[:id])
    end

    def index
        @vets = Vet.all
    end

    def new
        @vet = Vet.new 
    end
    
    def create
        @vet = Vet.create(vet_params)
        #TODO validations logic 
        redirect_to vet_path(@vet)
    end

    def edit
        @vet = Vet.find(params[:id])
    end

    def update
        @vet = Vet.find(params[:id])
        @vet.update(vet_params)
        redirect_to vet_path(@vet)
    end

    def destroy
        @vet = Vet.find(params[:id])
        @vet.destroy
    end

    private 

    def vet_params
        params.require(:vet).permit(:name)
    end
end

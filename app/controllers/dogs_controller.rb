class DogsController < ApplicationController

    def show
        @dog = Dog.find(params[:id])
    end

    def index
        @dogs = Dog.all 
    end

    def new
        @dog = Dog.new
    end

    def create
        # @dog = Dog.create(name: params[:dog][:name], breed: params[:dog][:breed])
        @dog = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end

    def destroy
        Dog.find(params[:id]).destroy
        redirect_to dogs_path
    end

    private

    def dog_params 
        params.require(:dog).permit(:name, :breed)
    end

end

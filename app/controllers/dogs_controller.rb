class DogsController < ApplicationController
    skip_before_action :verify_authenticity_token

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
        @dog = Dog.new(dog_params)
        if @dog.valid?  
            @dog.save
            redirect_to dog_path(@dog)
        else
            render :new  
        end 
    end

    def edit 
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.new(dog_params)
        if @dog.valid?  
            @dog.save
            redirect_to dog_path(@dog)
        else
            render :edit
        end 
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

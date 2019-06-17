class DestinationsController < ApplicationController
    before_action :set_destination, only: [:show, :edit, :update, :destroy]

    def index
        @destinations = current_user.destinations
    end

    def new
        @destination = current_user.destinations.new
    end

    def edit
    end


    def create
        @destination = current_user.destinations.new(destination_params)
    
        if @destination.save
            redirect_to destinations_path()#some change here        
        else
            render :new
        end
    end


    def update
       
        if @destination.update(destination_params)
          redirect_to destination_path()
        else
          render 'edit'
        end
    end

    def destroy
       
        @destination.destroy
    
        redirect_to destinations_path()
    end

    def set_destination
        @destination = current_user.destinations.find(params[:id])
    end

    def destination_params
        params.require(:destination).permit(:name,:budget)
    end
    
end
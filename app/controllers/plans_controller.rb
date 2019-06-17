class PlansController < ApplicationController
  before_action :set_destination 
    before_action :set_plan, only: [:show, :edit, :update, :destroy]
    def index
         @plan = @destination.plans.new #add new action here
        @plans = @destination.plans
    end

    def show
    end

    def new
      @plan = @destination.plans.new #add new action here
    end

    # GET /books/1/edit
    def edit
    end


    def create
        @plan = @destination.plans.new(plan_params)
    
        if @plan.save
            redirect_to destination_plans_path()#some change here        
        else
            render :new
        end
    end

      def update
       
        if @plan.update(plan_params)
          redirect_to destination_plans_path()
        else
          render 'edit'
        end
      end

      
    def destroy
       
        @plan.destroy
    
        redirect_to destination_plans_path()
    end
      
    def set_destination
        @destination = Destination.find(params[:destination_id])
    end

    def set_plan
        @plan = @destination.plans.find(params[:id])
    end

    def plan_params
        params.require(:plan).permit(:place, :day, :time)
    end
    
end
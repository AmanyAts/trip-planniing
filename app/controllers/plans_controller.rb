class PlansController < ApplicationController
    before_action :set_plan, only: [:show, :edit, :update, :destroy]
    def index
        @plans = current_user.plans
    end

    def show
    end

    def new
        @plan = current_user.plans.new
    end


    def create
        @plan = current_user.plans.new(plan_params)
    
        if @plan.save
            redirect_to plan_path(@plan)        
        else
            render :new
        end
      end

    def set_plan
        @plan = current_user.plans.find(params[:id])
    end

    def plan_params
        params.require(:plan).permit(:place, :day)
    end
    
end
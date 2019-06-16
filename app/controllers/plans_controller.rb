class PlansController < ApplicationController
    before_action :set_plan, only: [:show, :edit, :update, :destroy]
    def index
        @plan = current_user.plans.new #add new action here
        @plans = current_user.plans
    end

    def show
    end

    def new
        @plan = current_user.plans.new
    end

    # GET /books/1/edit
    def edit
    end


    def create
        @plan = current_user.plans.new(plan_params)
    
        if @plan.save
            redirect_to plans_path()#some change here        
        else
            render :new
        end
      end

      def update
        @plan = current_user.plans.new(plan_params)
       
        if @plan.update(plan_params)
          rredirect_to plans_path()
        else
          render 'edit'
        end
      end

      
      def destroy
       
        @plan.destroy
    
        redirect_to plans_path()
       end

    def set_plan
        @plan = current_user.plans.find(params[:id])
    end

    def plan_params
        params.require(:plan).permit(:place, :day)
    end
    
end
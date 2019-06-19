class Plan < ApplicationRecord
    belongs_to :destination

    after_update :update_budget

    def update_budget
        puts "update triggered"
        if self.saved_change_to_spending?
            destination = self.destination
            destination.budget = destination.budget.to_i - self.saved_change_to_spending[1]
            destination.save 
        end
    end
end

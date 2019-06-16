class AddDestinationToPlans < ActiveRecord::Migration[5.2]
  def change
    add_reference :plans, :destination, foreign_key: true
  end
end

class AddBudgetToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :budget, :string
  end
end

class AddSpendingToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :spending, :int
  end
end

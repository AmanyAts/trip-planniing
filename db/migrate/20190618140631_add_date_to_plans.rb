class AddDateToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :date, :datetime
  end
end

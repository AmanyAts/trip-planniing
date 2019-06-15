class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :place
      t.string :day
      t.string :time

      t.timestamps
    end
  end
end

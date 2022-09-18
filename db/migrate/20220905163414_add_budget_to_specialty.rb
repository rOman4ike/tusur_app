class AddBudgetToSpecialty < ActiveRecord::Migration
  def change
    add_column :specialties, :budget, :boolean
  end
end

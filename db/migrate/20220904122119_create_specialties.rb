class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :specialty

      t.timestamps null: false
    end
  end
end

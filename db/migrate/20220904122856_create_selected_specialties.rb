class CreateSelectedSpecialties < ActiveRecord::Migration
  def change
    create_table :selected_specialties do |t|
      t.references :user, index: true, foreign_key: true
      t.references :specialty, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

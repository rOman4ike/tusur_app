class CreateSpecialtySubjects < ActiveRecord::Migration
  def change
    create_table :specialty_subjects do |t|
      t.string :subject
      t.integer :points
      t.references :specialty, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

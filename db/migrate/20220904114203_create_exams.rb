class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :subject
      t.integer :points
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

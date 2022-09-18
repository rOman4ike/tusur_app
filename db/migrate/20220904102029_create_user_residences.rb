class CreateUserResidences < ActiveRecord::Migration
  def change
    create_table :user_residences do |t|
      t.string :country
      t.string :region
      t.string :city
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

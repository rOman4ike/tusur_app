class AddAttrToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
    add_column :users, :phone, :string
  end
end

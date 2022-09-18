class CreateUserPhotos < ActiveRecord::Migration
  def self.up     
    create_table :user_photos do |t|  
      t.has_attached_file :avatar     

      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end 
  end 
   
  def self.down   
    drop_attached_file :users, :avatar   
  end 
end

class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
     
      t.timestamps null: false
    end
  end
 def self.down
    remove_attachment :image
  end


end











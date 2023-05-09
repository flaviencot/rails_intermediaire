# Correspond à Join Tag et Gossip
class CreateIntertags < ActiveRecord::Migration[7.0]
  def change
    create_table :intertags do |t|
      
      t.belongs_to :gossip, index:true 
      t.belongs_to :tag, index:true 
      
      t.timestamps
    end
  end
end

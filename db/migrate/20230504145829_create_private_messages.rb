class CreatePrivateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :private_messages do |t|
      t.references :recipient, index: true
      t.references :sender, index: true
      
      t.timestamps
    end
  end
end

class AddRecipientsToPrivateMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :private_messages, :recipient, foreign_key: true 
  end
end

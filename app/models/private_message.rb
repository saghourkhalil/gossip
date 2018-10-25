class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: 'senders_id'
  belongs_to :recipient, class_name: "User", foreign_key: 'recipients_id'
end

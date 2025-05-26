class Conversation < ApplicationRecord
  belongs_to :project
  belongs_to :user
  enum entry_type: { comment: "comment", status_change: "status_change" }
  validates :message, presence: true
  validates :entry_type, presence: true

end

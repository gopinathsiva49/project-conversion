class Conversation < ApplicationRecord
  belongs_to :project
  belongs_to :user
  enum type: { comment: "comment", status_change: "status_change" }
  validates :content, presence: true
  validates :type, presence: true

end

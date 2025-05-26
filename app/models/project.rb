class Project < ApplicationRecord
    enum current_status: { open: 0, in_progress: 1, closed: 2, on_hold: 3 }
    has_many :conversations, dependent: :destroy
    validates :name, presence: true
  
end

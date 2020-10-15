class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['Not Started', 'In Progress', 'Completed'] }

  STATUS_OPTIONS = [
    ['Not Started', 'Not Started'],
    ['In Progress', 'In Progress'],
    ['Completed'  , 'Completed'  ]
  ]
end

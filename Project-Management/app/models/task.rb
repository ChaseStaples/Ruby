class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['Not Started', 'In Progress', 'Completed'] }

  STATUS_OPTIONS = [
    ['Not Started', 'Not Started'],
    ['In Progress', 'In Progress'],
    ['Completed'  , 'Completed'  ]
  ]

    def badge_color
      case status
      when 'Not Started'
        'secondary'
      when 'In Progress'
        'info'
      when 'Completed'
        'success'
      end
    end

    def not_started?
      status == 'Not Started'
    end
    
    def in_progress?
      status == 'In Progress'
    end

    def complete?
      status == 'Completed'
    end

end

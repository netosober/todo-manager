class Task < ActiveRecord::Base
  validates :title, :presence => true
  validates :due_on, :presence => true

  def expired?
    due_on.past?
  end
end

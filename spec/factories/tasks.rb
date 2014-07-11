FactoryGirl.define do
  factory :task do
    title 'Laundry'
    due_on { DateTime.now + 1.day }
  end

  factory :expired_task, class: Task do 
    title 'Dusting'
    due_on { 1.day.ago }
  end
end
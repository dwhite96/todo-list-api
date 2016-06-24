FactoryGirl.define do
  factory :todo do
    title "Test an uncompleted todo"
    order 1

    factory :completed_todo do
      title "Test a completed todo"
      completed true
    end
  end
end

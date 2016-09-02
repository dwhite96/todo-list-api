FactoryGirl.define do
  factory :user do
    uid "jd93m39ks"
    handle "daviddwhite75"
  end

  factory :todo do
    title "Test an uncompleted todo"
    user

    factory :completed_todo do
      title "Test a completed todo"
      completed true
    end
  end
end

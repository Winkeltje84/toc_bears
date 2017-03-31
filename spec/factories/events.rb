FactoryGirl.define do
  factory :event do
    title "Factory Title"
    location "Factory Lane"
    spaces_available 35
    public true
    date 10.days.from_now
  end
end

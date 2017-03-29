FactoryGirl.define do

  factory :message do
    body        {Faker::Lorem.sentence}
    image       {Faker::File.file_name('path/to')}
    user_id     {Faker::Number.digit}
    group_id    {Faker::Number.digit}
    created_at  {Faker::Time.between(2.days.ago, Time.now, :all)}
  end

end



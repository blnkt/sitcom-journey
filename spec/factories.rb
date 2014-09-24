FactoryGirl.define do
  factory :scene do
    youtube_id "F3jk3pflofk"
    user_id 1
    start_time "2:56"
    end_time "3:07"
  end

  factory :plot do
    title 'the contest'
    show_name 'Seinfeld'
    season '4'
    episode '18'
    user_id 1
  end

  factory :user do
    name 'blanks'
    email 'blank@et.com'
    password 'password'
    password_confirmation 'password'
  end
end

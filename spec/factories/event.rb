FactoryBot.define do
  factory :event do
		creator
		
    name { "Karl's Birthday" }
		description { "Karl's 1 year Birthday" }
		location { "My Residence" }
		event_date { Date.today.next_month }
  end
end
require 'rails_helper'

RSpec.describe User, type: :model do
  context "input validations" do
		it { is_expected.to validate_presence_of(:fullname).
				with_message(/Enter your name or username/) }
		
		it { is_expected.to validate_presence_of(:username).
				with_message(/Enter your name or username/) }
		
		it { is_expected.to validate_length_of(:fullname).
				is_at_most(50).
				with_message(/Name too Long - max 50 chars/) }
		
		it { is_expected.to validate_length_of(:username).
				is_at_least(3).is_at_most(16).
				with_message(/Username too short or long, 3 - 16 chars/)}
		
		it { is_expected.to validate_length_of(:username).
				is_at_least(3).is_at_most(16).
				with_message(/Username too short or long, 3 - 16 chars/)}
	end
	
end
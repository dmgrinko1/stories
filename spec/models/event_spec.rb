require "rails_helper"

describe 'Event' do
  let!(:user) { User.create(email: 'dmgrklkljkdfdfdfinko1@gmail.com', password: '12345678', password_confirmation: '12345678') }
  it "create event" do
    test_event = Event.create!(name: 'test_name', user_id: user.id)
    expect(Event.last).to eq(test_event)
  end
end
require "rails_helper"

RSpec.describe User, :type => :model do
  it "create user" do
    test_user = User.create!(email: 'test_user@gmail.com', password: '12345678', password_confirmation: '12345678')
    puts test_user.valid?
    expect(User.last).to eq(test_user)
  end
end
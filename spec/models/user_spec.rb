require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    User.destroy_all
    User.create(username: 'peter', email: 'peter@gmail.com', password: '$2a$12$bMGfKhJ8AE2M2')
    User.create(username: 'clement', email: 'clement@gmail.com', password: '$2a$12$bMGfKhJ8AE2M2')
  end

  it "is valid with valid attributes" do
    expect(User.all.count).to be_eql 2
  end
  it "is not valid without a secure password"
  it "is not valid without email"
  it "is not valid without username"
  it "is not valid without unique email"
end

require 'rails_helper'

RSpec.describe Item, type: :model do
  before(:all) do
    Item.destroy_all
    Item.create(name: '2020 TESLA MODEL', model: 'WHITE Y', reviews: '4', price: '$65784')
  end
  it "is valid with valid attributes" do
    expect(Item.all.count).to be_eql 1
  end
end

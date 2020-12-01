require "rails_helper"

RSpec.describe ItemsController, type: :controller do
  describe "GET index" do
    before(:all) do
      Item.destroy_all
    end

    it "assigns @items" do
      item = Item.create(name: '2020 TESLA MODEL', model: 'WHITE Y', reviews: '4', price: '$65784')
      get :index
      expect(assigns(:items)).to eq([item])
    end
  end
end

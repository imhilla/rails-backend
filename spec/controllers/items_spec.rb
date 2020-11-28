require "rails_helper"

RSpec.describe ItemsController, type: :controller do
  describe "GET index" do
    # it "returns a 200" do
    #   request.headers["Authorization"] = "foo"
    #   get :show
    #   expect(response).to have_http_status(:ok)
    # end

    before(:all) do
      Item.destroy_all
    end

    it "assigns @items" do
      item = Item.create(name: '2020 TESLA MODEL', model: 'WHITE Y', reviews: '4', price: '$65784')
      get :index
      expect(assigns(:items)).to eq([item])
    end

    # it "renders the index template" do
    #   get :index
    #   expect(response).to render_template("index")
    # end
  end
end
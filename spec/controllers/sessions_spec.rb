require "rails_helper"

RSpec.describe SessionsController, type: :controller do
  describe "post a question route", :type => :request do
    before(:all) do
      User.destroy_all
      User.create(username: 'imhilla', email: 'hillary@gmail.com', password: '123456')
    end

    before do
      post '/sessions', params: { user: { email: 'hillary@gmail.com', password: '123456' } }
    end

    it 'returns the logged_in true' do
      expect(JSON.parse(response.body)['logged_in']).to eq(true)
    end

    it 'returns user' do
      expect(JSON.parse(response.body)['user']['email']).to eq('hillary@gmail.com')
    end
  end
end

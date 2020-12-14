require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  describe 'post a question route', type: :request do
    before(:all) do
      User.destroy_all
    end

    before do
      post '/registrations', params: {
        user: { username: 'imhilla', email: 'hillary@gmail.com', password: '123456', password_confirmation: '123456' }
      }
    end

    it 'returns the username' do
      expect(JSON.parse(response.body)['user']['username']).to eq('imhilla')
    end

    it 'returns the email' do
      expect(JSON.parse(response.body)['user']['email']).to eq('hillary@gmail.com')
    end
  end
end

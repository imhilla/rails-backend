require 'rails_helper'

RSpec.describe AppointmentsController, type: :controller do
  describe 'post a question route', type: :request do
    before(:all) do
      User.destroy_all
      User.create(username: 'peter', email: 'peter@gmail.com', password: '$2a$12$bMGfKhJ8AE2M2', id: 1)
    end

    before do
      post '/appointments', params: { appointment: { username: 'imhilla', model: 'WHITE y', date: '12/23/2020', city: 'Kisumu', user_id: '1' } }
    end

    it 'returns the username' do
      expect(JSON.parse(response.body)['username']).to eq('imhilla')
    end

    it 'returns the model' do
      expect(JSON.parse(response.body)['model']).to eq('WHITE y')
    end

    it 'returns the date' do
      expect(JSON.parse(response.body)['date']).to eq('12/23/2020')
    end

    it 'returns the city' do
      expect(JSON.parse(response.body)['city']).to eq('Kisumu')
    end
  end
end

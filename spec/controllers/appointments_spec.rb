require "rails_helper"

RSpec.describe AppointmentsController, type: :controller do
  describe "post a question route", :type => :request do

    before do
     post '/appointments', params: { appointment: {username: 'imhilla', model: 'WHITE y', date: '12/23/2020', city: 'Kisumu', user_id: '1'} }
    end

    it 'returns the question' do
      expect(JSON.parse(response.body)['username']).to eq('imhilla')
    end

  end
end
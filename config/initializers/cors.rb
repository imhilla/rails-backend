Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # origins 'https://intense-stream-27935.herokuapp.com'
    origins 'http://localhost:3000'
    resource '*', 
    headers: :any, 
    methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

end

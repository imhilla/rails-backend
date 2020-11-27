# if Rails.env == "production"
Rails.application.config.session_store :cookie_store, key: '_booking_app', domain: 'infinite-ocean-27248.herokuapp.com'
# else 
  # Rails.application.config.session_store :cookie_store, key: '_booking_app'
# end
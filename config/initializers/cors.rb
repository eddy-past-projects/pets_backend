# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # origins 'https://fast-waters-11750.herokuapp.com | *'
    origins 'https://silly-johnson-856e87.netlify.com', 'http://localhost:3001', 'http://silly-johnson-856e87.netlify.com'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end


Rails.application.config.action_controller.forgery_protection_origin_check = false

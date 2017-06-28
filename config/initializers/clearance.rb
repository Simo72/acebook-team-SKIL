Clearance.configure do |config|
  config.mailer_sender = "cheeto@acebook.com"
  config.rotate_csrf_on_sign_in = true
  config.redirect_url = '/posts'
end

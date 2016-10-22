OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1631829493781078', '114a69ada8a82d5cc15c389db1aa7df4'
end

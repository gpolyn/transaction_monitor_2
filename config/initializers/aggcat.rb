Aggcat.configure do |config|
  config.issuer_id = Rails.application.secrets.intuit_saml_id
  config.consumer_key = Rails.application.secrets.intuit_consumer_id
  config.consumer_secret = Rails.application.secrets.intuit_consumer_secret
  if Rails.application.secrets.intuit_cert_value.nil?
    config.certificate_path = Rails.application.secrets.config_cert_path
  else
    config.certificate_value = Rails.application.secrets.intuit_cert_value
  end
end

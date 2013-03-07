Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '477241325658257', 'edb4b40f1f0a20a70fef304acd769834'
end
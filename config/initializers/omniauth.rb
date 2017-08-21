Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, "260423c5e6547f01bc8f", "901ac26dff6ad9e57e0fe946359980a62d2add1b"
end

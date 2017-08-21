Rails.application.config.middleware.use OmniAuth::Builder do
<<<<<<< HEAD
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
=======
    provider :github, "", ""
>>>>>>> 19fe9d2b56b99a2b45b93e5158985080d6c58ea8
end


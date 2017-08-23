class GithubService
 attr_reader :conn, :user_name, :user_token

 def initialize(user)
   @user_name = user.screen_name
   @user_token = user.oauth_token
   @conn = Faraday.new(url: "https://api.github.com") do |faraday|
     faraday.adapter  Faraday.default_adapter
     faraday.params[:access_token] = user_token
   end
 end

  def user_info
    parse(conn.get("user"))
  end

  def user_commits
    parse(conn.get("users/#{user_name}/events"))
  end

   private

   def parse(response)
       JSON.parse(response.body, symbolize_names: true)
   end
end

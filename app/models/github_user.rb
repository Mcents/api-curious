class GithubUser

  attr_reader :followers, :image, :email, :blog, :created_at
  def initialize(user_attributes={})
    @followers    = user_attributes[:followers]
    @image = user_attributes[:avatar_url]
    @email =  user_attributes[:email]
    @blog  = user_attributes[:blog]
    @created_at = user_attributes[:created_at].to_date.strftime("%B %d, %Y")
  end

  def self.user_info(user)
    user_profile = GithubService.new(user).user_info
    GithubUser.new(user_profile)
  end
end

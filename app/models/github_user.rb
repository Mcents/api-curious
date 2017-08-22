class GithubUser

  attr_reader :followers, :image, :email, :blog, :created_at, :following
  def initialize(user_attributes={})
    @followers    = user_attributes[:followers]
    @image = user_attributes[:avatar_url]
    @email =  user_attributes[:email]
    @blog  = user_attributes[:blog]
    @following = user_attributes[:following]
  end

  def self.user_info(user)
    user_profile = GithubService.new(user).user_info
    GithubUser.new(user_profile)
  end
end

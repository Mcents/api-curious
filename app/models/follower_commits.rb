class FollowerCommits

  def initialize(user_followers={})
  end

  def self.user_followers(user)
    GithubService.new(user).follower_commits.each do |com|
      FollowerCommits.new(com)
    end
  end
end

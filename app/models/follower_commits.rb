class FollowerCommits
  attr_reader :repo_name

  def initialize(user_followers={})
    @repo_name = user_followers[:repo][:name]
  end

  def self.user_followers(user)
    GithubService.new(user).follower_commits.map do |com|
      FollowerCommits.new(com)
    end
  end
end

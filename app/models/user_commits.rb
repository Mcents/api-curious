class UserCommits
  
  attr_reader :commit_repo, :commit_created, :commit_link
  def initialize(user_commits={})
    @commit_repo = user_commits[:repo][:name]
    @commit_created = user_commits[:created_at].to_date.strftime("%B %d, %Y")
    @commit_link = user_commits[:repo][:url]
  end

  def self.user_commits(user)
    GithubService.new(user).user_commits.map do |commit|
      UserCommits.new(commit)
    end
  end
end

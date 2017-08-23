class UserCommits
  
  attr_reader :commit_repo
  def initialize(user_commits={})
    @commit_repo = user_commits[:repo][:name]
    @commit_created = user_commits[:created_at].to_date.strftime("%B %d, %Y")
  end

  def self.user_commits(user)
    GithubService.new(user).user_commits.each do |commit|
      UserCommits.new(commit)
    end
  end
end

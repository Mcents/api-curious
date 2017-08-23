class GithubUserRepo

  def initialize(user_repo_atts={})
  end

  def self.user_repo(user)
    GithubService.new(user).user_repo.each do |com|
      GithubUserRepo.new(com)
    end
  end
end

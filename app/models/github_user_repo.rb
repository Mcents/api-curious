class GithubUserRepo
  attr_reader :repo_name

  def initialize(user_repo_atts={})
    @repo_name = user_repo_atts[:name]
  end

  def self.user_repo(user)
    GithubService.new(user).user_repo.each do |com|
      GithubUserRepo.new(com)
    end
  end
end

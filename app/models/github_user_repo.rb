class GithubUserRepo
  attr_reader :repo_name,
              :html_url

  def initialize(user_repo_atts={})
    @repo_name = user_repo_atts[:name]
    @html_url = user_repo_atts[:html_url]
  end

  def self.user_repo(user)
    GithubService.new(user).user_repo.map do |com|
      GithubUserRepo.new(com)
    end
  end
end

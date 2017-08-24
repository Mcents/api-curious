 class StarredRepo
   attr_reader :repo_name
   
  def initialize(star_rep={})
    @repo_name = star_rep[:name]
  end

  def self.star_rep(user)
    GithubService.new(user).starred_repo.map do |com|
      StarredRepo.new(com)
    end
  end
 end

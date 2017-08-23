 class StarredRepo
   
  def initialize(star_rep={})
  end

  def self.star_rep(user)
    GithubService.new(user).starred_repo.each do |com|
      StarredRepo.new(com)
    end
  end
 end

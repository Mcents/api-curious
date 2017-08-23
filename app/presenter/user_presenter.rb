class UserPresenter

  def initialize(current_user)
    @current_user = current_user
  end

  def user_info
    GithubUser.user_info(current_user)
  end

  def user_commits
    UserCommits.user_commits(current_user)
  end

  def user_followers
    FollowerCommits.user_followers(current_user)
  end

  def starred_repo
    StarredRepo.star_rep(current_user)
  end

  def org_info
    UserOrgs.org_info(current_user)
  end

  def user_repo_info
    GithubUserRepo.user_repo(current_user)
  end

private
  attr_reader :current_user
end

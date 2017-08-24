class UserOrgs
  
  attr_reader 
  def initialize(org_atts={})
  end

  def self.org_info(user)
    org_profile = GithubService.new(user).orgs_info
    UserOrgs.new(org_profile)
  end
end

require 'rails_helper'

describe GithubService do
  attr_reader :service

  before(:each) do
    user = OpenStruct.new(
      user_name: "mcents",
      token: ENV['TOKEN']
    )
    @service = GithubService.new(user)
  end
  
  describe "user info" do
    it "returns a users info" do
      VCR.use_cassette("services/user") do
        user_info1 = service.user_info

        expect(user_info1.class).to eq(Hash)
      end
      
    end
  end
end

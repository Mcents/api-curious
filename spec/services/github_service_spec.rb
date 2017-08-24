require 'rails_helper'

describe GithubService do
  context "#user_info" do
    it 'retrieves user info' do
      VCR.use_cassette("#user_info") do


        user = OpenStruct.new(
        id: 94,
         screen_name: "mcents",
         uid: "16926627",
          oauth_token: ENV['TOKKEN'],
         name: "Michael Centrelli")
 
        user_info = GithubService.new(user).user_info

        expect(user_info.class).to eq(Hash)
        expect(user_info).to have_key(:login)
      end
    end
  end

  context "#follower_commits" do
    it "retrieves users followers info" do
      VCR.use_cassette("#follower_commits") do


        user = OpenStruct.new(
        id: 94,
         screen_name: "mcents",
         uid: "16926627",
          oauth_token: ENV['TOKKEN'],
         name: "Michael Centrelli")

        fol_info = GithubService.new(user).follower_commits

        expect(fol_info.class).to eq(Array)
        expect(fol_info.first).to have_key(:repo)
      end
    end
  end


  context "#repo_info" do
    it "retrieves users repos" do
      VCR.use_cassette("#repo_info") do


        user = OpenStruct.new(
        id: 94,
         screen_name: "mcents",
         uid: "16926627",
          oauth_token: ENV['TOKKEN'],
         name: "Michael Centrelli")

        fol_info = GithubService.new(user).user_repo

        expect(fol_info.class).to eq(Array)
        expect(fol_info.first).to have_key(:name)
      end
    end
  end


  context "#starred_repos" do
    it "retrieves users starred repos" do
      VCR.use_cassette("#starred_repos") do


        user = OpenStruct.new(
        id: 94,
         screen_name: "mcents",
         uid: "16926627",
          oauth_token: ENV['TOKKEN'],
         name: "Michael Centrelli")

        fol_info = GithubService.new(user).starred_repo

        expect(fol_info.class).to eq(Array)
        expect(fol_info.first).to have_key(:name)
      end
    end
  end
end

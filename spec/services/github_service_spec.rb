require 'rails_helper'

describe GithubService do
  context "#user_info" do
    it 'retrieves user info' do
      VCR.use_cassette("#user_info") do


        user = OpenStruct.new(
        d: 94,
         screen_name: "mcents",
         uid: "16926627",
          oauth_token: "3f2dc06b716c811604e0b9bf0886814b5883e5c2",
         name: "Michael Centrelli")
 
        user_info = GithubService.new(user).user_info

        expect(user_info.class).to eq(Hash)
        expect(user_info).to have_key(:login)
      end
    end
  end
end

require 'rails_helper'

describe GithubService do
  attr_reader :service

  before(:each) do
    @service = GithubService.new
  end
end

describe "followers" do
  it "returns the github accounts followers" do
    follower = @service.followers

    expect(followers.class).to eq(Array)
  end
end

require 'spec_helper'
describe 'Repository' do
  describe 'initialize' do
    it 'initialize with full args' do
      args = {
        "repo_name" => "repo1",
        "namespace" => "madams",
        "repo_path" => "madams/repo1",
        "is_automated" => false,
        "description" => "repo1",
        "creation_at" => "2014-11-19T05:54:22.741Z",
        "updated_at" => "2014-11-19T05:54:22.741Z",
        "is_public"=> true,
        "logo" => "default-icon.jpg",
        "repo_starred_count" => 0,
        "full_description" => "",
        "download" => 0,
        "upload" => 9,
        "pulled_at" => nil,
        "pushed_at"=> "2015-06-04T16:30:27.532Z"
      }

      repository =  Alauda::Api::Repository.new args
      expect(repository.repo_name).to eq("repo1")
      expect(repository.upload).to eq(9)
    end
  end
end
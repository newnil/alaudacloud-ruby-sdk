module Alauda
  module Api
    class Repository
      API_URL = "https://api.alauda.cn/"
      attr_accessor :repo_name,:namespace,:repo_path,:is_automated,:description,:creation_at,:updated_at,
                    :is_public,:logo,:repo_starred_count,:full_description,:download,:upload,:pulled_at,
                    :pushed_at
      def initialize(options={})
        options.each do |k,v|
          instance_variable_set("@#{k}", v) unless v.nil?
        end
      end


      def self.list(params)
        RestClient.get "#{API_URL}/v1/repositories/#{params[:namespace]}", {:Authorization => "Token #{Alauda.api_key}"}
      end


      # 触发构建
      # {
      #     "namespace": "alauda",
      #     "repo_name": "test",
      #     "tag": "latest",
      #     "code_commit_id": "552819d5c903472a36696e8ac620ac250e49829d"  <== optionals
      # }
      def self.build(params)
        RestClient.post "#{API_URL}/v1/builds",params, {:Authorization => "Token #{Alauda.api_key}"}
      end

      #
      # 实例方法进行构筑
      # @param tag
      # @oaram code_commit_id
      #
      def build(params)
        params = {
          :namespace => @namespace,
          :repo_name => @repo_name
        }.merge(params)
        Repository.build(params)
      end
    end
  end
end
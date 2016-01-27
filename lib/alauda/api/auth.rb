require 'rest-client'
module Alauda
  module Api
    class Auth
      API_URL = "https://api.alauda.cn/"

      def self.profile(params)
        RestClient.get "#{API_URL}/v1/auth/#{params[:namespace]}/profile/", {:Authorization => "Token #{Alauda.api_key}"}
      end
    end
  end
end
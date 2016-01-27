require_relative 'version'

require_relative 'api/application'
require_relative 'api/auth'
require_relative 'api/service'
require_relative 'api/repository'


module Alauda
  class << self
    attr_accessor :api_key

  end
end
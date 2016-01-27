require_relative 'version'

require_relative 'api/application'
require_relative 'api/auth'


module Alauda
  class << self
    attr_accessor :api_key

  end
end
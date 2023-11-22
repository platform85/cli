require "thor"
require "platform85/cli/gem/new_gem"

module Platform85
  module Cli
    module Gem
      class Commands < Thor
        register NewGem, :new, "new gem", "create new gem"
      end
    end
  end
end

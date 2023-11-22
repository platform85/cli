require "thor"
require "platform85/cli/gem"

module Platform85
  module Cli
    class Commands < Thor
      desc "gem", "gem commands"
      subcommand "gem", Gem
    end
  end
end

require "thor"
require "platform85/cli/gem/commands"

module Platform85
  module Cli
    class Commands < Thor
      desc "gem", "gem commands"
      subcommand "gem", Gem::Commands
    end
  end
end

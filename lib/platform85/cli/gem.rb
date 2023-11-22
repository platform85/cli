module Platform85
  module Cli
    class Gem < Thor
      desc "new gem", "create new gem"
      def new(name)
        `mkdir #{name}`
      end
    end
  end
end

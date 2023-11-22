require "thor/group"
require "thor/actions"

module Platform85
  module Cli
    module Gem
      class NewGem < Thor::Group
        include Thor::Actions
        argument :name

        def new
          `mkdir #{name}`
        end
      end
    end
  end
end

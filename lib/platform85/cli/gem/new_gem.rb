require "thor/group"
require "thor/actions"

module Platform85
  module Cli
    module Gem
      class NewGem < Thor::Group
        include Thor::Actions
        argument :name

        def self.source_root
          File.dirname(__FILE__)
        end

        def create_dir
          `mkdir #{name}`
        end

        def create_lib_file
          template("template/README.md.tt", "#{name}/README.md")
        end
      end
    end
  end
end

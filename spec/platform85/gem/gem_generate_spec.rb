require "platform85/gem/new_gem"

require "platform85/dev/test/temp_directory"

module Platform85
  module Gem
    RSpec.describe NewGem do
      def platform_exec(cmd)
        `#{RootPath.new.join("bin/platform85")} #{cmd}`
      end

      example "it can generate new gem " do
        Dev::Test::TempDirectory.new.with do
          platform_exec("gem new new-gem")
        end
      end
    end
  end
end

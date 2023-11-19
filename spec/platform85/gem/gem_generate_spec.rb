require "platform85/gem/new_gem"

require "platform85/dev/test/temp_directory"

module Platform85
  module Gem
    RSpec.describe NewGem do
      example "it can generate new gem " do
        Dev::Test::TempDirectory.new.with do
          NewGem.new("new-library", {}).generate
        end
      end
    end
  end
end

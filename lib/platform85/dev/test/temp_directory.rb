require "fileutils"
require "platform85/dev/test/directory"
require "tmpdir"

module Platform85
  module Dev
    module Test
      # Execute the given code inside a temporary directory.
      #
      # NOTE: this changes the current `Dir.pwd`
      class TempDirectory
        def with(&block)
          Dir.mktmpdir do |dir|
            Directory.new(dir).with(&block)
          end
        end
      end
    end
  end
end

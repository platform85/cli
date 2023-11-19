require "fileutils"
require "platform85/dev/test/directory"

module Platform85
  module Dev
    module Test
      # Execute the given code inside a temporary directory.
      #
      # NOTE: this changes the current `Dir.pwd`
      class TempDirectory
        def with(dir = Pathname.new("tmp").join("aruba"), &block)
          delete_tmp_directory(dir)
          create_tmp_directory(dir)

          Directory.new(dir).with(&block)
        ensure
          delete_tmp_directory(dir)
        end

        private

        def create_tmp_directory(dir)
          FileUtils.mkdir_p(dir)
        end

        def delete_tmp_directory(dir)
          directory = case dir
                      when Pathname
                        dir
                      when String
                        Pathname.new(dir)
                      end

          FileUtils.rm_rf(directory) if directory.exist?
        end
      end
    end
  end
end

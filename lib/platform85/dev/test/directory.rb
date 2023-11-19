module Platform85
  module Dev
    module Test
      class Directory
        def initialize(dir)
          @dir = dir
        end

        def with
          current = Dir.pwd
          target  = Pathname.new(Dir.pwd).join(@dir)

          Dir.chdir(target)
          yield
        ensure
          Dir.chdir(current)
        end
      end
    end
  end
end

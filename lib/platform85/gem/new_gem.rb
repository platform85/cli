module Platform85
  module Gem
    class NewGem
      def initialize(name, dir: Dir.pwd)
        @name = name
        @dir = dir
      end

      def generate
      end
    end
  end
end

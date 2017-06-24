require 'thor/group'

module Vibe
  module Generators
    class Route < Thor::Group
      include Thor::Actions

      argument :folder, :type => :string
      argument :name, :type => :string

      def self.source_root
        File.dirname(__FILE__) + "/vibed"
      end

      def create_folder
        empty_directory(folder)
      end

      def copy_route
        template('route.d', "#{folder}/#{name}.d")
      end
    end
  end
end
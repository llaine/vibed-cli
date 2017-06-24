require 'thor'
require 'vibe'
require 'vibe/generators/route'

module Vibe
  class CLI < Thor
    desc "route NAME", "Generate a route with a specific name"

    def route(folder, name)
      puts Vibe::Generators::Route.start([folder, name])
    end

    desc "controller", "Generate a controller"
    method_option :name, :aliases => "-n"
    def controller
      puts Vibe::Name.controller(options[:name])
    end
  end
end
module Vibe
  class Name
    def self.route(name)
      "route #{name}"
    end

    def self.controller(name)
      "controller #{name}"
    end
  end
end
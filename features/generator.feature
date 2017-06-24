Feature: Generate things

  Scenario: Generate a route
    When I run `vibecli route hello world`
    Then the following files should exist:
      | hello/world.d |
    Then the file "hello/world.d" should contain:
      """
       I'm the route world in the folder hello
      """
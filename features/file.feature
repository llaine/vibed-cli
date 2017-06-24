Feature: File
  In order to portray or pluralize food
  As a CLI
  I want to be as objective as possible

  Scenario: Generate a controller
    When I run `vibecli controller --name=hello`
    Then the output should contain "controller hello"
# features/hello_grav.feature
Feature: hello_grav
  In order to see if Grav is installed
  As a web visitor
  I need to see "GravCMS" in the response
Scenario: See GravCMS in the head of the DOM
  Given I am on "https://getgrav.org/"
  Then the response should contain "GravCMS"
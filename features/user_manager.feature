@manager_user
Feature: With App
  I want to Manager users

  Background:
    Given I see the text "Clientes"

  Scenario: Create new user
    When I click to register a new user
    And I create a new user
    Then Should be displayed a message: "Registro Inserido com sucesso"

  Scenario: Consult a user
    When I press list item number 1
    Then I should see "CONFIG['NAME']"

  Scenario: Delete a user
    When I long press list item number 1
    Then I press view with id "imageView9"



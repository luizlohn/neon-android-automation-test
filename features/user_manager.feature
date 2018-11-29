@manager_user
Feature: With App
  I want to Manager users

  Background:
    Given I see the text "Clientes"

  @create_user
  Scenario: Create new user
    When I click to register a new user
    And I create a new user
    Then Should be displayed a message: "Registro Inserido com sucesso"

  @consult_user
  Scenario: Consult a user
    When I create a new user
    And I press list item number 1
    Then I should see the same name

  @delete_user
  Scenario: Delete a user
    When I create a new user
    And I long press list item number 1
    Then I press to delete user


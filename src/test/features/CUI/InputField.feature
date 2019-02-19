@CUI
Feature: Testing the inputfield of the CUI
  This feature verifies that the inputfield works correctly

  Scenario Outline:  check that the inputfield is disabled if no category button is pressed
    Given I launch Chrome browser
    When I Open localhost
    Then I Verify That The CUI Shows A Welcome Message
    And I Verify That There Is A Buildings Button In The CUI
    And I Verify That There Is A Employees Button In The CUI
    And I Verify That There Is A Companies Button In The CUI
    Then I Verify That The Inputfield is Disabled
    Then add to testrun <testRun> <testCase>
    Then I close the browser window

    Examples:
      |testCase|testRun|
      |4855    |382    |

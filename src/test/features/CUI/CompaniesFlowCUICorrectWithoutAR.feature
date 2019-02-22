@CUI
Feature: The CUI returns the correct item
  This feature verifies that the CUI returns the correct item

  Scenario Outline: Check that the CUI returns the correct company
    Given I launch Chrome browser
    When I Open localhost
    Then I Verify That The CUI Shows A Welcome Message
    Then I Verify That There Is A Buildings Button In The CUI
    Then I Verify That There Is A Companies Button In The CUI
    Then I Verify That There Is A Employees Button In The CUI
    When I Click On The Companies Button In The CUI
    Then I Verify That There The CUI Shows A Message With The Text company
    Then I Verify That The CUI Asks Which Company The User Is Looking For
    When I give in CompanyName <companyName> On The InputField
    And I Click On The Send Button
    Then I Verify That The CUI Shows The Correct Messages When The Given Company Name Exists
    When I Click On No Button In Company Flow
    Then I Verify That The CUI Shows A Correct Final Message In The Company Flow
    Then add to testrun <testRun> <testCase>
    Then I close the browser window

    Examples:
      |testCase|testRun|companyName|
      |4841    |382    |xti     |

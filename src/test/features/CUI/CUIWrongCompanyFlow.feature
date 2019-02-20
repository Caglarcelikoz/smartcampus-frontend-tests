@CUI
Feature: The CUI doesn't return a company
  This feature verifies that the CUI doesn't return a company

  Scenario Outline: Check that the CUI doesn't return a company
    Given I launch Chrome browser
    When I Open localhost
    Then I Verify That The CUI Shows A Welcome Message
    Then I Verify That There Is A Buildings Button In The CUI
    Then I Verify That There Is A Companies Button In The CUI
    Then I Verify That There Is A Employees Button In The CUI
    When I Click On The Companies Button In The CUI
    Then I Verify That There The CUI Shows A Message With The Text company
    And I Verify That The CUI Asks Which Company The User Is Looking For
    When I give in CompanyName <companyName> On The InputField
    And I Click On The Send Button
    Then I Verify That The CUI Shows The Correct Messages When The Given Company Name Not Exists
    When I Click On The Company Button To Check The Table With All Companies
    Then I Verify That The Companies Page Is Opened
    Then add to testrun <testRun> <testCase>
    Then I close the browser window

    Examples:
      |testCase|testRun|companyName|
      |4862    |382    |Test       |

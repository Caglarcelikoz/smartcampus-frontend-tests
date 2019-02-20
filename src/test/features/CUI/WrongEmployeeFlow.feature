@CUI
Feature: The CUI doesn't return an employee
  This feature verifies that the CUI doesn't return an employee

  Scenario Outline: Check that the CUI doesn't return an employee
    Given I launch Chrome browser
    When I Open localhost
    Then I Verify That The CUI Shows A Welcome Message
    Then I Verify That There Is A Buildings Button In The CUI
    Then I Verify That There Is A Companies Button In The CUI
    Then I Verify That There Is A Employees Button In The CUI
    When I Click On The Employees Button In The CUI
    Then I Verify That There The CUI Shows A Message With The Text employees
    And I Verify That The CUI Asks Which Employee The User Is Looking For
    When I give in EmployeeName <employeeName> On The InputField
    And I Click On The Send Button
    Then I Verify That The CUI Shows The Correct Messages When The Given Employee Name Not Exists
    When I Click On The Employee Button To Check The Table With All Employees
    Then I Verify That The Employees Page Is Opened
    Then add to testrun <testRun> <testCase>
    Then I close the browser window

    Examples:
      |testCase|testRun|employeeName|
      |4859    |382    |Test       |

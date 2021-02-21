Description: Task 2a, Task 2c, and part of Task 1c

Scenario: Log in as existing user
Given I am on the main application page
When I click on element located `By.Xpath(//a[contains(text(), "Log in")])`
When I enter `${existingemail}` in field located `By.Xpath(//*[@id="user"])`
When I enter `${existingpass}` in field located `By.Xpath(//*[@id="password"])`
When I click on element located `By.Xpath(//*[@id="login"])`
When I enter `${existingpass}` in field located `By.Xpath(//*[@id="password"])`
When I click on element located `By.Xpath(//*[@id="login-submit"])`
When I wait until the page has the title 'Boards | Trello'


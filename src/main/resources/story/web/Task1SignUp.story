Description: unfortunatelly, signIn in Trello requires verifying with capcha, so the test is written till capcha appears. Haven't found any solution for overcomming capcha :( 
			 
Scenario:  Sign up with random account
Given I am on the main application page
When I enter `#{generate(regexify'[a-z]{8}[1-9]{2}')}@gmail.com` in field located `By.Xpath(//*[contains(text(), 'Trello helps teams move work forward.')]/..//input)`
When I click on element located `By.Xpath(//*[contains(text(), 'Trello helps teams move work forward.')]/..//button)`
Then the text 'Sign up for your account' exists
When I enter `#{generate(regexify'[A-Z]{1}[a-z]{8}')}` in field located `By.Xpath(//*[@id="password"])`
When I enter `#{generate(regexify'[1-9]{4}[A-Z]{2}[a-z]{5}')}` in field located `By.Xpath(//*[@id="displayName"])`
When I click on element located `By.Xpath(//*[@id="signup-submit"])`
Then number of elements found by `By.Xpath(//iframe[@title="recaptcha challenge"])` is GREATER_THAN `0`

Scenario:  Sign up with ExamplesTable
Given I am on the main application page
When I enter `<userEmail>` in field located `By.Xpath(//*[contains(text(), 'Trello helps teams move work forward.')]/..//input)`
When I click on element located `By.Xpath(//*[contains(text(), 'Trello helps teams move work forward.')]/..//button)`
Then the text 'Sign up for your account' exists
When I enter `<password>` in field located `By.Xpath(//*[@id="password"])`
When I enter `<fullName>` in field located `By.Xpath(//*[@id="displayName"])`
When I click on element located `By.Xpath(//*[@id="signup-submit"])`
Then number of elements found by `By.Xpath(//iframe[@title="recaptcha challenge"])` is GREATER_THAN `0`

Examples:
|userEmail         |password       |fullName         |
|hgjfjd11@yandex.ru|Fox&Nox89      |DoraDonner999    |
|9876hui@mail.ru   |RandomLetters%2|HamsterTheGreater|

Scenario:  Sign up with custom predefined values
Given I am on the main application page
When I enter `${useremail}` in field located `By.Xpath(//*[contains(text(), 'Trello helps teams move work forward.')]/..//input)`
When I click on element located `By.Xpath(//*[contains(text(), 'Trello helps teams move work forward.')]/..//button)`
Then the text 'Sign up for your account' exists
When I enter `${userpass}` in field located `By.Xpath(//*[@id="password"])`
When I enter `${username}` in field located `By.Xpath(//*[@id="displayName"])`
When I click on element located `By.Xpath(//*[@id="signup-submit"])`
Then number of elements found by `By.Xpath(//iframe[@title="recaptcha challenge"])` is GREATER_THAN `0`



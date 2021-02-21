Discription: Task 2b

GivenStories: story/Precondition.story

Scenario: Verifi profile
When I click on element located `By.Xpath(//*[@aria-label="Open Member Menu"])`
When I click on element located `By.Xpath(//span[contains(text(), 'Profile and Visibility')])`
Then the text '<profiletext>' exists
Then the text '<accountname>' exists

Examples:
|profiletext                     |accountname|
|Manage your personal information|BadTester  |




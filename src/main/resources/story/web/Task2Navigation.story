Description: Task 2d(if implemented)

GivenStories: story/Precondition.story

Scenario: Navigate to 5 tabs with visual checks
When I click on element located `By.Xpath(//*[@data-test-id="home-team-settings-tab"])`
When I COMPARE_AGAINST baseline with `settingspage`
When I click on element located `By.Xpath(//a[contains(text(), "Members")])`
When I COMPARE_AGAINST baseline with `memberspage`
When I click on element located `By.Xpath(//*[contains(text(), "Guests")]/..)`
When I COMPARE_AGAINST baseline with `guestspage` ignoring:
|ELEMENT                                       |
|By.xpath(//*[@data-desktop-id="header-inner"])|
When I click on element located `By.Xpath(//*[@data-tab="tables"])`
When I COMPARE_AGAINST baseline with `teammembers`
When I click on element located `By.Xpath(//*[@data-tab="businessClass"])`
When I COMPARE_AGAINST baseline with `businessclass`


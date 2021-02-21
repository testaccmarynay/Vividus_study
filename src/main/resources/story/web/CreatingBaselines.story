Description: Story for capturing baselines

GivenStories: story/Precondition.story

Scenario: Navigate to 5 tabs and capture baselines
When I click on element located `By.Xpath(//*[@data-test-id="home-team-settings-tab"])`
When I establish baseline with `settingspage`
When I click on element located `By.Xpath(//a[contains(text(), "Members")])`
When I establish baseline with `memberspage`
When I click on element located `By.Xpath(//*[contains(text(), "Guests")]/..)`
When I establish baseline with `guestspage` ignoring:
|ELEMENT                                       |
|By.xpath(//*[@data-desktop-id="header-inner"])|
When I click on element located `By.Xpath(//*[@data-tab="tables"])`
When I establish baseline with `teammembers`
When I click on element located `By.Xpath(//*[@data-tab="businessClass"])`
When I establish baseline with `businessclass`

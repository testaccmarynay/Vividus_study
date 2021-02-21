Description: Task 1b - unfortunatelly, unable to get 200 response code using API

GivenStories: story/Precondition.story

Scenario: Creating board manually
When I click on element located `By.Xpath(//div[@class='board-tile mod-add'])`
When I enter `#{generate(regexify'[A-Z]{6}')}` in field located `By.Xpath(//input[@type="text"and @placeholder="Add board title"])`
When I click on element located `By.Xpath(//*[contains(text(), "Create Board")])`


Scenario: Sending request for board creation
Given request body: {
"defaultlist": false,
"name": "<boardName>",
"prefs_permissionLevel":"org",
idOrganization":"60324bec67221e7628a9e0b0",
"prefs_background_url":"https://images.unsplash.com/photo-1613667023109-4af33e671503?ixid=MXw3MDY2fDB8MXxjb2xsZWN0aW9ufDF8MzE3MDk5fHx8fHwyfA&ixlib=rb-1.2.1&w=2560&h=2048&q=90",
"prefs_selfJoin":true,
}
When I issue a HTTP POST request for a resource with the URL 'https://trello.com/1/boards'
Then the response code is equal to '200'

Examples:
|boardName |
|SelfBoard1|
|SelfBoard |









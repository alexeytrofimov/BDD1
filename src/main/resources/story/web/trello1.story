Scenario: 1. Create a new account
Meta:
	@test
	@layout desktop


Given I am on a page with the URL 'https://www.trello.com'

When I click on element located `By.xpath(//*[@class='btn btn-sm bg-white font-weight-bold'])`
Then the page with the URL 'https://trello.com/signup' is loaded

When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@class='button account-button button-green signup-redirect'])`
Then the page with the URL containing 'https://trello.com/signup?email' is loaded


When I click on element located `By.xpath(//*[@id="name"])`
When I enter `<firstName>` in field located `By.xpath(//*[@id="name"])`

When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup"])`
Examples:
|email|firstName|password|
|#{generate(regexify '[a-z]{5}')}@ugly.email|#{generate(Name.firstName)}|#{generate(regexify '[A-z][0-9]{10}')}|
|#{generate(regexify '[a-z]{5}')}@ugly.email|#{generate(Name.firstName)}|#{generate(regexify '[A-z][0-9]{10}')}|
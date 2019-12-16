Scenario: login
Given I am on the main application page
When I click on element located `By.xpath(//*[@class='btn btn-sm btn-link text-white'])`
When I enter `Alex_xelA@ugly.email` in field located `By.xpath(//*[@id="user"])`
When I enter `q2w3e4r5` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
Then an element by the xpath '//*[@id="layer-manager-popover"]//span[text()="Alex (alex46633723)"]' exists
When I click on all elements located `By.xpath(//span[text()="Templates"])`
When I COMPARE_AGAINST baseline with `templates`

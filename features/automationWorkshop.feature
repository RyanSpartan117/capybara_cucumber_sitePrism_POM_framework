Feature: Click on the big button

    @BigButton
    Scenario: I can click on the big button
        Given I am on the automation workshop page
        When I click on the big button
        Then I can see the big button confirmation text

    @SmallButton
    Scenario: I can click on the big button
        Given I am on the automation workshop page
        When I click on the small button
        Then I can see the small button confirmation text

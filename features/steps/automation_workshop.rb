Given("I am on the automation workshop page") do
	visit('https://topupmockserver.azurewebsites.net/automationWorkshop')
	expect(page.title).to eql('Autonation Workshop Practice')
end

When("I click on the big button") do
    
end

Then("I can see the big button confirmation text") do
    pending # Write code here that turns the phrase above into concrete actions
end


When("I click on the small button") do
   find('.anotherButton').click
end

Then("I can see the small button confirmation text") do
	buttonFeedback = find('#buttonClickFeedback')
	expect(butonFeedback).to eql('You have clicked the smaller button!')
end

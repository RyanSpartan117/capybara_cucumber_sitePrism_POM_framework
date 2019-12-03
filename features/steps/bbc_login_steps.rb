Given("I can access the BBC home page") do
  @bbcwebsite = Bbcwebsite.new
  @bbcwebsite.bbc_home_page.load
  @bbcwebsite.bbc_home_page.displayed?
end

Then("The sign in button exists") do
  @bbcwebsite.bbc_home_page.clickSignInLink
  @bbcwebsite.bbc_home_page.assertHomePage
end
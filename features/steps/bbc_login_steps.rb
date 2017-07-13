Given(/^I can access the BBC home page$/) do
  @Bbcwebsite = Bbcwebsite.new
  @Bbcwebsite.bbc_home_page.load
  @Bbcwebsite.bbc_home_page.displayed?
end

Then(/^The sign in button exists$/) do
  @Bbcwebsite.bbc_home_page.has_sign_in_link?
end
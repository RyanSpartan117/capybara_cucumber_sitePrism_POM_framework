class Bbchomepage < SitePrism::Page
  set_url "http://bbc.co.uk"
  set_url_matcher /bbc.co.uk/


  def clickSignInLink
	sign_in_link = find('#idcta-username')
	sign_in_link.click
  end

  def assertHomePage
  	expect(page.title).to eql('BBC - Home')
  end
end
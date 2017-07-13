# Site testing framework  

This framework uses the following technologies in the setup:  

- Capybara
- Cucumber
- Site prism  

This framework includes an example on how to grab elements from a website using siteprism (in the pages folder). The website being used is [The BBC website](www.bbc.co.uk).  

## Using Site Prism

An example page, ```bbc_home_page.rb```, can be found in the ```pages/``` directory. This shows how to build a page object. A full reference for site prism's available methods can be found [here](http://www.rubydoc.info/gems/site_prism/frames).  

## Using Capybara

## Using Cucumber

Write feature files using GWT Gherkin syntax. A guide to this can be found [here](https://cucumber.io/docs/reference).

Navigate to the root of the project and run the ```cucumber``` command. This will read through all of the feature files and print out template step definitions. You can then use the POM to access and manipulate elements on the page. 

#### Feature files and step definitions

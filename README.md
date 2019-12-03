# Site testing framework  

This framework uses the following technologies in the setup:  

- Capybara
- Cucumber
- Site prism  

This framework includes an example on how to grab elements from a website using siteprism (in the pages folder). The website being used is [The BBC website](www.bbc.co.uk).  

## Site Prism

A full reference for site prism's available methods can be found [here](http://www.rubydoc.info/gems/site_prism/frames). This framework only uses the URL methods for SitePrism. `set_url` in the page files, `.load`, `.displayed?` in the stepdefs. Finding elements will be handled by Capybara   

## Using Capybara
Capybara is primarily used for the finding and interacting with elements on the page. `find(<selector>)`, `.click` etc. [Capybara documentation](https://www.rubydoc.info/github/jnicklas/capybara).


## Using Cucumber

Write feature files using GWT Gherkin syntax. A guide to this can be found [here](https://cucumber.io/docs/reference).

Navigate to the root of the project and run the ```cucumber``` command. This will read through all of the feature files and print out template step definitions. You can then use the POM to access and manipulate elements on the page. 

#### Feature files and step definitions

Feature files, as stated above, followed the GWT Gherkin syntax. A new file should be made per feature tested, and they should live in the `/features` directory.

Step definitions are the glue that take the steps from the Feature file, and run the code defined in the page files. Each step in a feature file created should match a step definition.

e.g.:
**Feature File:**  

`Given I sign in`  

**Step Definition:**  

```
Given("I sign in") do 
	<Code that links to Page file>
end
```

### The debugging branch

This repo has been used for teaching and demostrating automated tests. So I have added a debugging repo that purposefully has a broken test in it for people looking to practice debugging as well as their automation skills/knowledge.
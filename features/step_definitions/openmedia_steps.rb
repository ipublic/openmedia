Given /^I do have a web application$/ do
  
end

When /^I visit the home page$/ do
  visit root_path
end

Then /^I should see the home page with title "(.*?)"$/ do |title|
  # page.should have_xpath("//title", :text => title)
  find('title').native.text.should have_content(title)
end

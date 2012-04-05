Given /^(?:|I )am on (.+)$/ do |page_name|
visit path_to(page_name)
end

When /^I follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |label, data|
  fill_in(label, {:with => data})
end

When /^I press "([^"]*)"$/ do |button|
  click_on(button)
end

Then /^I should see "([^"]*)"$/ do |message|
 page.should have_content(message)
end

Then /^I should be on the project page for "([^"]*)"$/ do |project_name|
 project_path(project_name)
end

Given /^there is a project called "([^"]*)"$/ do |name|
  Factory(:project, :name => name)
end

Then /^I should not see "([^"]*)"$/ do |name|
 page.should_not have_content(name)
end
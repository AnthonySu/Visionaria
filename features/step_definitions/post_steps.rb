Given /the following posts exist/ do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  table.hashes.each do |post|
    Post.create(post)
  end
end

When /I look at the posts/ do
  visit '/posts'
end

When(/^I delete the post with "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I choose to edit my post with "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I choose to delete my post with "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see an edit option for the post with "([^"]*)" by "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see a delete option for the post "([^"]*)" by "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I follow edit$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I change the$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
Given /the following users exist/ do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  table.hashes.each do |user|
    User.create(user)
  end
end

Given /sign up as "([^"]*)" with "([^"]*)", and email "([^"]*)"/ do |user, password, email|
  #pending # Write code here that turns the phrase above into concrete actions
  visit '/users/sign_up'
  fill_in "Username", :with => user
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  fill_in "Password confirmation", :with => password
  click_button "Sign up"
  step %Q{I should see "#{user}"}
end

When /follow the user "([^"]*)"/ do |username|
  pending # Write code here that turns the phrase above into concrete actions
end
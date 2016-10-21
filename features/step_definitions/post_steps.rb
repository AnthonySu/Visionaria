Given /the following posts exist/ do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  table.hashes.each do |post|
    Post.create(post)
  end
end

Then /should see "([^"]*)" points? for "([^"]*)"/ do |num_points, goal|
  pending # Write code here that turns the phrase above into concrete actions
end
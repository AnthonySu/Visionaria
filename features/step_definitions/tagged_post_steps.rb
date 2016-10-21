Given /the following tagged posts exist/ do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  table.hashes.each do |post|
    TaggedPost.create(post)
  end
end

When /follow the tag "([^"]*)"/ do |tag_name|
  pending # Write code here that turns the phrase above into concrete actions
end

When /follow the category "([^"]*)"/ do |category_name|
  pending # Write code here that turns the phrase above into concrete actions
end

When /I look at the tagged posts/ do
  visit '/tagged_posts'
end
Given /the following posts exist/ do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  table.hashes.each do |post|
    Post.create(post)
  end
end

When /I look at the posts/ do
  visit '/post'
end
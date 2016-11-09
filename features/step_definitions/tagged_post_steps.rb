Given /the following tagged posts exist/ do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  table.hashes.each do |post|
    TaggedPost.create(post)
  end
end

When /I look at the tagged posts/ do
  visit '/tagged_posts'
end

When /^I follow image link "([^"]*)"$/ do |img_alt|
    find(:xpath, "//img[@alt = '#{img_alt}']/parent::a").click()
end


Then /^I should see the image "(.+)"$/ do |image|
    page.should have_xpath("//img[@alt = '#{image}']/parent::a")
end
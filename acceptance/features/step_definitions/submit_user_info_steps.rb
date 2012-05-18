Given /^I am on the submit page$/ do
  visit("/")
end

When /^I submit my information$/ do
  page.fill_in('name', :with => "wangyan")
  page.fill_in('university', :with => "xjtu")

  page.find(".submit").click
end

Then /^I should see success message$/ do
  page.should have_content("you have submitted your information successfully")
end
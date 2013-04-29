Given /^the following user records$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.first do |h|
    @user_name  = "jj@gmail.com" #h["name"]
    @password   = "supersecret" #h["password"]
    @time_zone  = h["time_zone"]
  end
end

When /^the user visits the sign up page$/ do
  @password   = "supersecret" #h["password"]
  visit new_user_registration_path
  fill_in "user_email", with: "jj@gmail.com" #@user_name
  fill_in "user_password", with: @password
  fill_in "user_password_confirmation", with: @password
  select_second_option "user_time_zone"
end

When /^the user visits the edit user page$/ do
  visit edit_user_password_path
end

When /^clicks the "(.*?)" button$/ do |btn|
  click_on btn
end

When /^clicks the "(.*?)" link$/ do |link|
  click_on link
end

Then /^she should successfully create a new account named "(.*?)"$/ do |name|
  User.count.should > 0
  User.where(email: name).exists?.should == true
end

Given /^the user has an account$/ do
  User.where(email: @user_name).exists?.should == true
end

Given /^the user "(.*?)" has an account$/ do |name|
end

When /^she signs in$/ do
  @current_user = signin(@user.email, @user.password)
end

Then /^she should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^clicks the "(.*?)"$/ do |button|
  pending # express the regexp above with the code you wish you had
end

Then /^the user "(.*?)" should be deleted$/ do |name|
  User.where(email: name).exists?.should == false
end

Then /^show me the page$/ do
  print page.html
end


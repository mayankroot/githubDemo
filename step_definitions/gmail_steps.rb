sign_in = LoginVar.new
Given(/^I am on facebook page$/) do
  $browser.goto 'https://www.facebook.com/'
end

When(/^I should see and fill the login fields$/) do
  sign_in.login.set 'testacc202122@gmail.com'
  sign_in.password.set 'Hello@123'
end

Then(/^I should be able to login successfully$/) do
  sign_in.login_btn.click
end

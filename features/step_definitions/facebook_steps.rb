
Given(/^I am on facebook page$/) do
  $browser.goto 'https://www.facebook.com/'
end

When(/^I enter the correct login fields$/) do
  sign_in = LoginVar.new
  sign_in.login.set 'testacc202122@gmail.com'
  sign_in.password.set 'Hello@123'
end

Then(/^I should be able to login successfully$/) do
  sign_in = LoginVar.new
  sign_in.login_btn.click
  sleep (10)
end

When(/^I am logged onto facebook page$/) do
  $browser.goto 'https://www.facebook.com/'
  sign_in = LoginVar.new
  sign_in.login.set 'testacc202122@gmail.com'
  sign_in.password.set 'Hello'
  sign_in.login_btn.click
end

Then(/^I should land on facebook welcome page$/) do
  if $browser.url == 'https://www.facebook.com/?sk=welcome'
    print 'Successful'
  else
    $browser.screenshot.save 'screenshot.png'
    fail "Login failed. Try again!"
  end
end

Given(/^I am on gmail home page$/) do
  $browser.goto "https://accounts.google.com/signin"
end

Then(/^I should see and fill the login fields$/) do
  $browser.text_field(class: 'whsOnd zHQkBf').set 'testacc202122@gmail.com'
  $browser.driver.find_element(xpath: "(//*[@type='button' and @jsname='LgbsSe'])[2]").click
  sleep(3)
end
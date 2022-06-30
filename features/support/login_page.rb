require 'rubygems'
require 'watir'

class LoginVar

  def login
    $browser.text_field(name: 'email')
  end

  def password
    $browser.text_field(name: 'pass')
  end

  def login_btn
    $browser.button(name: 'login')
  end

end
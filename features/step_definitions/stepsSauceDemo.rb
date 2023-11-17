require 'selenium-webdriver'
require 'cucumber'
require 'rspec'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

Given('open SauceDemo home page') do
  driver.navigate.to 'https://saucedemo.com/'
  sleep(3)
end

Then('enter username and password') do
  driver.find_element(:id, 'user-name').send_keys('standard_user')
  sleep(3)
  driver.find_element(:id, 'password').send_keys('secret_sauce')
  sleep(3)
end

Then('click on login button') do
  driver.find_element(:id, 'login-button').click
  sleep(3)
end

Then('verify SauceDemo landing page') do
  expect(driver.find_element(:class, 'title').text).to eq('Products')
  sleep(3)
end

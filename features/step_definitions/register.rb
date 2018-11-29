require 'calabash-android/calabash_steps'
require_relative './../../screens/home'
require_relative '../../screens/register_user'

When(/^I click to register a new user$/) do
  @home_screen = page(HomeScreen)
  @home_screen.create_new_user
end

When(/^I create a new user$/) do
  @register = page(RegisterScreen)
  @register.fill_users(CONFIG['NAME'],
                       CONFIG['PHONE'],
                       CONFIG['EMAIL'],
                       CONFIG['CPF'])
  @register.click_on_save
end

Then(/^Should be displayed a message: "([^"]*)"$/) do |text|
  wait_for_text(text, timeout: 10)
end

Then(/^I should see the same name$/) do
  wait_for_text(CONFIG['NAME'], timeout: 10)
end

Then(/^I press to delete user$/) do
  @register.click_on_delete
end

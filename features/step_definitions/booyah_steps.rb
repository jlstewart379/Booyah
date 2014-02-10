Given(/^I have have entered Booyah into the textfield$/) do
  element = appium.find_element(:name, 'booyahTextField')
  element.send_keys 'Booyah!'
end
When(/^I have pressed the Booyah button$/) do
  appium.find_element(:name, 'booyahButton').click
end
Then(/^I can see the Booyah label$/) do
  element = appium.find_element(:name, 'Booyah!')
  element.text.eql?('Booyah!')
end
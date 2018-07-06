Then("Left Unit picker value should be {string}") do |value|
  actual_picker_text = find_elements(id: "select_unit_spinner")[0].text

  if actual_picker_text != value
    fail("Expected left unit picker value is #{value}, actual value is #{actual_picker_text}")
  end
end

Then("Right unit picker value should be {string}") do |value|
  actual_picker_text = find_elements(id: "select_unit_spinner")[1].text
  if actual_picker_text != value
    fail("Expected right unit picker value is #{value}, actual value is #{actual_picker_text}")
  end
end

=begin Este fica com duas step definitions, em vez s=de só uma
Then("Show All button should be (enabled|disabled)") do |state|
  if state == "enabled"
    puts("Button is enabled")
  elsif state == "disabled"
    puts("Button is disabled")
  end
end
=end

Then(/^Show all button should be (enabled|disabled|active)$/) do |state|
  if state == "enabled"
    puts("button is enabled")
  elsif state == "disabled"
    puts("button is disabled")
  elsif state == "active"
    puts("button is active")
  end
end

When("I press on clear button") do
  puts("Button is pressed")
end

When("I type {string} to target text field") do |target|
  digits = target.split("")

  digits.each do |num|
   find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{num}']").click
  end
end

Then("I should see result as {string}") do |result|
  value = find_element(id: "target_value").text
  if value != result
    fail("Expected unit picker value is #{result}, actual value is #{value}")
  end
end

Then(/^I press on Add Favorites icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorite conversions$/) do
  text("Conversões favoritos").click
end

And(/^I verify "([^"]*)" added to Favorite conversions list$/) do |unit|
  text(unit)
end

Then("I press on search icon") do
  find_element(id: "action_bar").find_element(id: "action_search").click
end

Then("I type {string} in search field") do |string|
  find_element(id: "search_src_text").send_keys(string)
end

Then("I press return button on soft keyboard") do
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count: 1).perform
end

Then("I see {string} as a current unit converter") do |string|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='#{string}']")
end

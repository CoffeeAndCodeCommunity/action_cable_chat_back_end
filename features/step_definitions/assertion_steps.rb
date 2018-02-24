Then(/^(?:he|she) should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end


Then(/^she should see a chat window$/) do
  expect(page).to have_selector 'div', id: 'messages'
end

And(/^she should see a message input field$/) do
  expect(page).to have_selector 'textarea', id: 'message_body'
end

And(/^she should see a "([^"]*)" button$/) do |arg|
  expect(page).to have_selector 'input[type="submit"]'
end

But(/^she should not see "([^"]*)"$/) do |text|
  expect(page).not_to have_content text
end
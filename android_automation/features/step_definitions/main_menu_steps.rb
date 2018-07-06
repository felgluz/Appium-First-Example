Given("I land on Home screen") do
  find_element(id: "action_search")
  find_element(id: "action_add_favorites")
end

When(/^I press on Menu icon$/) do
  find_element(accessibility_id: "Gaveta de navegação abrir").click
end

Then(/^I should see left side menu$/) do
  text("Conversor de Unidades")
end

And(/^I press on My conversions button$/) do
  text("Meus conversões").click
end

Then(/^I land on My conversions screen$/) do
  text("Nenhuma conversão pessoal criado ainda")
end
require "rails_helper"

feature "User creates reminder" do
  scenario "successfully" do
    visit root_path

    click_on "Add a reminder"
    fill_in "Reminder", with: "Mow the lawn"
    click_on "Remind Me"

    expect(page).to have_css ".reminders li", text: "Mow the lawn"
  end
end

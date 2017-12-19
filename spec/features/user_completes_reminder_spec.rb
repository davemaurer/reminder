require "rails_helper"

feature "User completes a reminder" do
  scenario "successfully" do
    sign_in

    click_on "Add a reminder"
    fill_in "Title", with: "Find money"
    click_on "Remind me"

    click_on "Complete this"

    expect(page).to have_css ".todos li.completed", text: "Find money"
  end
end

require "rails_helper"

feature "User completes a reminder" do
  scenario "successfully" do
    sign_in

    create_reminder("Find money")
    
    click_on "Complete this"

    expect(page).to have_css ".reminds li.completed", text: "Find money"
  end
end

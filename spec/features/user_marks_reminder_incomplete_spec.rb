require "rails_helper"

feature "User marks reminder incomplete" do
  scenario "successfully" do
    sign_in

    create_reminder("Find money")

    click_on "Complete this"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_reminder("Find money")
    expect(page).to display_reminder("Find money")
  end
end

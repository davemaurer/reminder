require "rails_helper"

feature "User creates reminder" do
  scenario "successfully" do
    sign_in

    create_reminder("Mow the lawn")

    expect(page).to display_reminder("Mow the lawn")
  end
end

require "rails_helper"

feature "User sees own reminders" do
  scenario "and not other user reminders" do
    Remind.create!(title: "Mow the lawn", email: "other_user@user.com")

    sign_in

    expect(page).not_to have_css ".todos li", text: "Mow the lawn"
  end
end

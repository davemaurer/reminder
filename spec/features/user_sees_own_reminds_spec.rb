require "rails_helper"


feature "User sees own reminders" do
  scenario "and not other user reminders" do
    Remind.create!(title: "Get Good", email: "other_user@user.com")

    sign_in_as "user@user.com"

    expect(page).not_to have_css ".todos li", text: "Get Good"
  end
end

module Features
  def create_reminder(reminder_title)
    click_on "Add a reminder"
    fill_in "Title", with: reminder_title
    click_on "Remind me"
  end
end

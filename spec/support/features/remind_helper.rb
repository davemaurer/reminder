module Features
  def create_reminder(reminder_title)
    click_on "Add a reminder"
    fill_in "Title", with: reminder_title
    click_on "Remind me"
  end

  def display_reminder(reminder_title)
    have_css ".reminds li", text: reminder_title
  end

  def display_completed_reminder(reminder_title)
    have_css ".reminds li.completed", text: reminder_title
  end
end

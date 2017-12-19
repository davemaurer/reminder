require "rails_helper"

describe Remind, "#completed?" do
  it "returns true if completed_at is set" do
    reminder = Remind.new(completed_at: Time.current)

    expect(reminder).to be_completed
  end

  it "returns false if completed_at is nil" do
    reminder = Remind.new(completed_at: nil)

    expect(reminder).not_to be_completed
  end
end

describe Remind, "#complete!" do
  it "updates completed_at" do
    reminder = Remind.create!(completed_at: nil)

    reminder.complete!

    reminder.reload

    expect(reminder).to be_completed
  end
end

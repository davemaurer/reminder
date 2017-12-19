require "rails_helper"

describe Remind, "#completed?" do
  it "returns true if completed_at is set" do
    reminder = Remind.new(completed_at: Time.current)

    expect(reminder).to be_completed
  end
  it "returns false if completed_at is nil"
end

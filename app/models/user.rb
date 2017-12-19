class User
  def initialize(email)
    @email = email
  end

  def reminds
    Remind.where(email: @email)
  end
end

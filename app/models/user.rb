class User
  def initialize(email)
    @email = email
  end

  def reminds
    Remind.where(email: @email)
  end

  def signed_in?
    @email.present?
  end
end

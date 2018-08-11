class Users
  def self.create!(name)
    User.create!(
      name: name,
    )
  end
end

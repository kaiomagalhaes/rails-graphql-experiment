# delete current records
User.destroy_all

10.times do
  user = User.create!(name: Faker::FunnyName)
  5.times do
    Lesson.create!(description: BetterLorem.w, user: user)
  end
end

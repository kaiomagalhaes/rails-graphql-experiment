class Lessons
	def self.create!(description, user_id)
		Lesson.create!(
			description: description,
			user_id: user_id,
		)
	end
end

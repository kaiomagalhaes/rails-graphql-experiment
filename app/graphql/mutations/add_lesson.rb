class Mutations::AddLesson < Mutations::BaseMutation
	argument :description, String, required: true
	argument :user_id, ID, required: true

	field :lesson, Types::LessonType, null: false

	def resolve(description:, user_id:)
		{
			lesson: Services::Lessons.create!(
				description,
				user_id,
			)
		}
	end
end

class Mutations::AddLesson < Mutations::BaseMutation
  argument :description, String, required: true

  field :lesson, Types::LessonType, null: false

  def resolve(description:)
    Lesson.create!(description: description)
  end
end

class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :lessons, [Types::LessonType], null: false

  def lessons
    Lesson.all
  end
end

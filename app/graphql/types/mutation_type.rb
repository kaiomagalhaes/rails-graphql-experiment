class Types::MutationType < Types::BaseObject
  field :add_lesson, mutation: Mutations::AddLesson
  field :add_user, mutation: Mutations::AddUser
end

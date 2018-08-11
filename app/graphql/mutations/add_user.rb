class Mutations::AddUser < Mutations::BaseMutation
	argument :name, String, required: true

	field :user, Types::UserType, null: false

	def resolve(name:)
		{
			user: Users::Lessons.create!(name)
		}
	end
end

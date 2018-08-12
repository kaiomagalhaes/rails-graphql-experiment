require 'rails_helper'

describe 'Lesson Mutation', type: :request do
  include_context 'GraphQL Client'

  description = 'Turn the batsignal on!'

  before do
    create(:user)
  end

  let(:query) do
    <<-GRAPHQL
      mutation {
        addLesson(input: { description: "#{description}", userId: #{User.first.id} }) {
          lesson {
            description,
			      user {
				      name,,
			      }
          }
        }
      }
    GRAPHQL
  end

  it 'creates a lesson' do
    response = client.execute(query)
    lesson = response.data.add_lesson.lesson

    expect(lesson.description).to eq(description)
  end
end

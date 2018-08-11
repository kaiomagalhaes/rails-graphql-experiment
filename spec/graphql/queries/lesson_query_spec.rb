require 'rails_helper'

describe 'Lesson Query', type: :request do
  include_context 'GraphQL Client'

  let(:query) do
    <<-GRAPHQL
    query {
      lessons {
      description,
        id,
        user {
          name,,
        }
      }
    }
    GRAPHQL
  end

  it 'returns a list of lessons' do
    lessons_ids = create_list(:lesson, 2).map(&:id).map(&:to_s)
    response = client.execute(query)
    lessons = response.data.lessons

    expect(lessons.map(&:id)).to contain_exactly(*lessons_ids)
  end
end

require 'rails_helper'

describe 'User Mutation', type: :request do
  include_context 'GraphQL Client'

  name = 'Batman!'

  let(:query) do
    <<-GRAPHQL
      mutation {
        addUser(input: { name: "#{name}" }) {
          user {
				    name,
          }
        }
      }
    GRAPHQL
  end

  it 'creates an user' do
    response = client.execute(query)
    user = response.data.add_user.user

    expect(user.name).to eq(name)
  end
end

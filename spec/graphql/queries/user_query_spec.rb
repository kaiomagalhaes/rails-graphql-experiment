require 'rails_helper'

describe 'User Query', type: :request do
  include_context 'GraphQL Client'

  let(:query) do
    <<-GRAPHQL
    query {
      users {
        id,
        name,,
      }
    }
    GRAPHQL
  end

  it 'returns a list of users' do
    users_ids = create_list(:user, 2).map(&:id).map(&:to_s)
    response = client.execute(query)
    users = response.data.users

    expect(users.map(&:id)).to contain_exactly(*users_ids)
  end
end

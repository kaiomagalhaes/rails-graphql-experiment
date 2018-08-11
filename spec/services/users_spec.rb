require 'rails_helper'

RSpec.describe Users, type: :service do
  describe "#create!" do
    it 'creates a valid User' do
      name = 'a cool name'
      user = Users.create!(name)
      expect(user).to be_a User
    end
  end
end

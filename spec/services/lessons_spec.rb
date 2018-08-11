require 'rails_helper'

RSpec.describe Lessons, type: :service do
  describe "#create!" do
    it 'creates a valid Lesson' do
      description = 'a cool description'
      user = create(:user)
      lesson = Lessons.create!(description, user.id)
      expect(lesson).to be_a(Lesson)
    end
  end
end

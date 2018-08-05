require 'rails_helper'

RSpec.describe Lesson, type: :model do
  # Relationships
  it { should belong_to :user }

  # Attributes
  it { should validate_presence_of :description }
end

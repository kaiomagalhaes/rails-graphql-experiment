require 'rails_helper'

RSpec.describe User, type: :model do
  # Relationships
  it { should have_many :lessons }

  # Attributes
  it { should validate_presence_of :name }
end

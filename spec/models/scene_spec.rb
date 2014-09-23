require 'rails_helper'

describe Scene do
  it { should have_and_belong_to_many :plots}
  it { should validate_presence_of :start }
  it { should validate_presence_of :end }
  it { should validate_presence_of :address }
end
